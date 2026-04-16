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

# Configuration
NUM_USERS = 500
MAX_BOOKINGS_PER_USER = 3 # Some will have 0, some up to 3

url = os.environ.get('TURSO_DATABASE_URL').replace('libsql://', 'wss://').replace('https://', 'wss://')
token = os.environ.get('TURSO_AUTH_TOKEN')
client = libsql_client.create_client_sync(url=url, auth_token=token)

print(f"Connecting to Turso: {url}")

def run_seed():
    print("Fetching schedules and fares...")
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
            
    if not schedules:
        print("No schedules/fares found! Please ensure database is seeded.")
        return

    print(f"Generating {NUM_USERS} users and realistic booking history...")

    try:
        # Pre-calculate IDs for manual assignments since HTTP doesn't allow returning last_rowid across transactions natively
        max_user_rs = client.execute("SELECT COALESCE(MAX(UserID), 0) FROM users")
        max_user_id = int(max_user_rs.rows[0][0])
        
        max_pass_rs = client.execute("SELECT COALESCE(MAX(PassengerID), 0) FROM passengers")
        max_pass_id = int(max_pass_rs.rows[0][0])
        
        max_ticket_rs = client.execute("SELECT COALESCE(MAX(TicketID), 0) FROM bookings")
        max_ticket_id = int(max_ticket_rs.rows[0][0])
        
        stmts = []
        
        for i in range(1, NUM_USERS + 1):
            user_id = max_user_id + i
            passenger_id = max_pass_id + i
            
            username = fake.user_name() + str(random.randint(100, 99999))
            password_hash = generate_password_hash('password123')
            email = fake.email()
            phone = "01" + "".join([str(random.randint(0, 9)) for _ in range(9)])
            fullname = fake.name()
            
            stmts.append(libsql_client.Statement(
                "INSERT INTO users (UserID, Username, PasswordHash, Email, Phone, FullName, Role, is_active) VALUES (?, ?, ?, ?, ?, ?, 'Passenger', 1)",
                [user_id, username, password_hash, email, phone, fullname]
            ))
            
            passport = "".join(random.choices("ABCDEFGHIJKLMNOPQRSTUVWXYZ", k=2)) + "".join(random.choices("0123456789", k=7))
            dob = str(fake.date_of_birth(minimum_age=18, maximum_age=80))
            gender = random.choice(['Male', 'Female'])
            
            stmts.append(libsql_client.Statement(
                "INSERT INTO passengers (PassengerID, UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality) VALUES (?, ?, ?, ?, ?, ?, 'Bangladeshi')",
                [passenger_id, user_id, passport, fullname, dob, gender]
            ))
            
            num_bookings = random.randint(0, MAX_BOOKINGS_PER_USER)
            for _ in range(num_bookings):
                max_ticket_id += 1
                ticket_id = max_ticket_id
                
                sched = random.choice(schedules)
                
                days_offset = random.randint(-30, 15)
                booking_date = (datetime.now() + timedelta(days=days_offset)).strftime('%Y-%m-%d %H:%M:%S')
                pnr = f"PNR{datetime.now().strftime('%Y%m%d')}{uuid.uuid4().hex[:8].upper()}"
                
                status = random.choices(['Confirmed', 'Cancelled'], weights=[90, 10])[0]
                
                stmts.append(libsql_client.Statement(
                    "INSERT INTO bookings (TicketID, PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number) VALUES (?, ?, ?, ?, ?, 1.00, ?)",
                    [ticket_id, passenger_id, sched['ScheduleID'], booking_date, status, pnr]
                ))
                
                amount = sched['TotalAmount']
                method = random.choice(['Credit Card', 'bKash', 'Nagad', 'Cash'])
                pay_status = 'Completed' if status == 'Confirmed' else 'Refunded'
                txn_id = f"TXN{datetime.now().strftime('%Y%m%d%H%M%S')}{uuid.uuid4().hex[:6].upper()}"
                
                stmts.append(libsql_client.Statement(
                    "INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id) VALUES (?, ?, ?, ?, ?, ?)",
                    [ticket_id, amount, booking_date, method, pay_status, txn_id]
                ))
                
        print(f"Batching {len(stmts)} statements...")
        # Break into smaller chunks to avoid payload limits
        chunk_size = 500
        for i in range(0, len(stmts), chunk_size):
            chunk = stmts[i:i + chunk_size]
            client.batch(chunk)
            print(f"Executed chunk {i//chunk_size + 1}")
            
        print(f"Successfully inserted {NUM_USERS} users along with random bookings and payments!")
            
    except Exception as e:
        print("Transaction failed:", str(e))
    finally:
        client.close()

if __name__ == '__main__':
    run_seed()
