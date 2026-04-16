import os
import random
import uuid
from datetime import datetime, timedelta
from faker import Faker
from werkzeug.security import generate_password_hash
import libsql_client
from dotenv import load_dotenv

load_dotenv()
fake = Faker('en_US')

NUM_USERS = 500
MAX_BOOKINGS_PER_USER = 3

def generate_sql_dump():
    # Use HTTPS to fetch existing schedules to make bookings realistic
    url = os.environ.get('TURSO_DATABASE_URL').replace('libsql://', 'https://')
    token = os.environ.get('TURSO_AUTH_TOKEN')
    
    print("Fetching schedules and fares from Turso...")
    client = libsql_client.create_client_sync(url=url, auth_token=token)
    
    try:
        rs_schedules = client.execute("""
            SELECT s.ScheduleID, f.TotalAmount 
            FROM schedules s
            JOIN fares f ON s.RouteID = f.RouteID
            WHERE s.is_active = 1
        """)
        schedules = []
        if rs_schedules.rows:
            for r in rs_schedules.rows:
                schedules.append({
                    'ScheduleID': r[0],
                    'TotalAmount': float(r[1])
                })
                
        # Also need current max IDs to continue incrementing cleanly
        max_user_id = int(client.execute("SELECT COALESCE(MAX(UserID), 0) FROM users").rows[0][0])
        max_pass_id = int(client.execute("SELECT COALESCE(MAX(PassengerID), 0) FROM passengers").rows[0][0])
        max_ticket_id = int(client.execute("SELECT COALESCE(MAX(TicketID), 0) FROM bookings").rows[0][0])
        
    finally:
        client.close()

    if not schedules:
        print("No schedules found! Cannot create realistic bookings.")
        return

    print("Generating SQL statements...")
    
    output_lines = []
    output_lines.append("-- ============================================")
    output_lines.append(f"-- SEED DATA FOR {NUM_USERS} USERS & BOOKINGS")
    output_lines.append("-- ============================================\n")
    
    for i in range(1, NUM_USERS + 1):
        user_id = max_user_id + i
        passenger_id = max_pass_id + i
        
        username = fake.user_name() + str(random.randint(100, 99999))
        password_hash = generate_password_hash('password123')
        email = fake.email()
        phone = "01" + "".join([str(random.randint(0, 9)) for _ in range(9)])
        fullname = fake.name().replace("'", "''")
        
        output_lines.append(
            f"INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) "
            f"VALUES ({user_id}, '{username}', '{password_hash}', '{email}', '{phone}', '{fullname}', 'Passenger', 1);"
        )
        
        passport = "".join(random.choices("ABCDEFGHIJKLMNOPQRSTUVWXYZ", k=2)) + "".join(random.choices("0123456789", k=7))
        dob = str(fake.date_of_birth(minimum_age=18, maximum_age=80))
        gender = random.choice(['Male', 'Female'])
        
        output_lines.append(
            f"INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) "
            f"VALUES ({passenger_id}, {user_id}, '{passport}', '{fullname}', '{dob}', '{gender}', 'Bangladeshi');"
        )
        
        num_bookings = random.randint(0, MAX_BOOKINGS_PER_USER)
        for _ in range(num_bookings):
            max_ticket_id += 1
            ticket_id = max_ticket_id
            
            sched = random.choice(schedules)
            
            days_offset = random.randint(-30, 15)
            booking_date = (datetime.now() + timedelta(days=days_offset)).strftime('%Y-%m-%d %H:%M:%S')
            pnr = f"PNR{datetime.now().strftime('%Y%m%d')}{uuid.uuid4().hex[:8].upper()}"
            status = random.choices(['Confirmed', 'Cancelled'], weights=[90, 10])[0]
            
            output_lines.append(
                f"INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) "
                f"VALUES ({ticket_id}, {passenger_id}, {sched['ScheduleID']}, '{booking_date}', '{status}', 1.00, '{pnr}');"
            )
            
            amount = sched['TotalAmount']
            method = random.choice(['Credit Card', 'bKash', 'Nagad', 'Cash'])
            pay_status = 'Completed' if status == 'Confirmed' else 'Refunded'
            txn_id = f"TXN{datetime.now().strftime('%Y%m%d%H%M%S')}{uuid.uuid4().hex[:6].upper()}"
            
            output_lines.append(
                f"INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) "
                f"VALUES ({ticket_id}, {amount}, '{booking_date}', '{method}', '{pay_status}', '{txn_id}');"
            )
        
        output_lines.append("") # Empty line between users
        
    output_path = os.path.join(os.path.dirname(__file__), '..', 'database', 'seed_500_users.sql')
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write("\n".join(output_lines))
        
    print(f"✅ Successfully wrote {len(output_lines)} lines to {os.path.abspath(output_path)}")
    print("You can now open this file and run it directly in Turso.")

if __name__ == '__main__':
    generate_sql_dump()
