import os
import re
import libsql_client
import sys
from dotenv import load_dotenv

load_dotenv()

# Read the original SQL
with open('c:/Users/User/Saved Games/railway_project1/RRMS/database/railway_db.sql', 'r', encoding='utf-8') as f:
    sql_text = f.read()

# Manually create the SQLite schema
# We define the SQLite dialect tables to avoid regex complex parsing
SQLITE_TABLES = """
DROP TABLE IF EXISTS audit_logs;
DROP TABLE IF EXISTS refunds;
DROP TABLE IF EXISTS cancellations;
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS seat_availability;
DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS fares;
DROP TABLE IF EXISTS seats;
DROP TABLE IF EXISTS coaches;
DROP TABLE IF EXISTS schedules;
DROP TABLE IF EXISTS route_stops;
DROP TABLE IF EXISTS routes;
DROP TABLE IF EXISTS trains;
DROP TABLE IF EXISTS stations;
DROP TABLE IF EXISTS passengers;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    UserID INTEGER PRIMARY KEY AUTOINCREMENT,
    Username TEXT NOT NULL UNIQUE,
    PasswordHash TEXT NOT NULL,
    Email TEXT UNIQUE,
    Phone TEXT,
    FullName TEXT,
    Role TEXT DEFAULT 'Passenger',
    is_active INTEGER DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_email ON users(Email);

CREATE TABLE passengers (
    PassengerID INTEGER PRIMARY KEY AUTOINCREMENT,
    UserID INTEGER,
    PassportNumber TEXT,
    FullName TEXT,
    DateOfBirth DATE,
    Gender TEXT,
    Nationality TEXT DEFAULT 'Bangladeshi',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES users(UserID) ON DELETE CASCADE
);
CREATE INDEX idx_user_id ON passengers(UserID);

CREATE TABLE stations (
    station_id INTEGER PRIMARY KEY AUTOINCREMENT,
    station_code TEXT UNIQUE NOT NULL,
    station_name TEXT NOT NULL,
    station_name_bn TEXT,
    division TEXT NOT NULL,
    city TEXT NOT NULL,
    latitude REAL,
    longitude REAL,
    is_junction INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_station_code ON stations(station_code);
CREATE INDEX idx_division ON stations(division);

CREATE TABLE trains (
    TrainNumber TEXT NOT NULL PRIMARY KEY,
    TrainName TEXT NOT NULL,
    train_type TEXT DEFAULT 'Intercity',
    TotalSeats INTEGER NOT NULL DEFAULT 400,
    Speed INTEGER DEFAULT NULL,
    is_active INTEGER DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_train_type ON trains(train_type);

CREATE TABLE routes (
    RouteID INTEGER PRIMARY KEY AUTOINCREMENT,
    SourceStation TEXT NOT NULL,
    DestinationStation TEXT NOT NULL,
    Distance REAL DEFAULT NULL,
    estimated_duration_minutes INTEGER DEFAULT NULL,
    is_active INTEGER DEFAULT 1
);
CREATE INDEX idx_from_to ON routes(SourceStation, DestinationStation);

CREATE TABLE route_stops (
    stop_id INTEGER PRIMARY KEY AUTOINCREMENT,
    RouteID INTEGER NOT NULL,
    station_id INTEGER NOT NULL,
    stop_sequence INTEGER NOT NULL,
    distance_from_start_km REAL NOT NULL,
    platform_number TEXT,
    FOREIGN KEY (RouteID) REFERENCES routes(RouteID) ON DELETE CASCADE,
    FOREIGN KEY (station_id) REFERENCES stations(station_id),
    UNIQUE (RouteID, station_id)
);
CREATE INDEX idx_route_sequence ON route_stops(RouteID, stop_sequence);

CREATE TABLE schedules (
    ScheduleID INTEGER PRIMARY KEY AUTOINCREMENT,
    TrainNumber TEXT,
    RouteID INTEGER,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    off_day TEXT DEFAULT 'None',
    is_active INTEGER DEFAULT 1,
    FOREIGN KEY (TrainNumber) REFERENCES trains(TrainNumber),
    FOREIGN KEY (RouteID) REFERENCES routes(RouteID)
);
CREATE INDEX idx_train_route ON schedules(TrainNumber, RouteID);

CREATE TABLE coaches (
    coach_id INTEGER PRIMARY KEY AUTOINCREMENT,
    TrainNumber TEXT NOT NULL,
    coach_number TEXT NOT NULL,
    class_code TEXT NOT NULL,
    class_name TEXT NOT NULL,
    total_seats INTEGER NOT NULL,
    coach_position INTEGER NOT NULL,
    has_ac INTEGER DEFAULT 0,
    FOREIGN KEY (TrainNumber) REFERENCES trains(TrainNumber) ON DELETE CASCADE,
    UNIQUE (TrainNumber, coach_number)
);
CREATE INDEX idx_train_class ON coaches(TrainNumber, class_code);

CREATE TABLE seats (
    seat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    coach_id INTEGER NOT NULL,
    seat_number TEXT NOT NULL,
    seat_type TEXT DEFAULT 'Aisle',
    is_available INTEGER DEFAULT 1,
    FOREIGN KEY (coach_id) REFERENCES coaches(coach_id) ON DELETE CASCADE,
    UNIQUE (coach_id, seat_number)
);
CREATE INDEX idx_coach_availability ON seats(coach_id, is_available);

CREATE TABLE fares (
    FareID INTEGER PRIMARY KEY AUTOINCREMENT,
    RouteID INTEGER,
    ClassType TEXT,
    TotalAmount REAL,
    class_multiplier REAL DEFAULT 1.00,
    effective_from DATE DEFAULT NULL,
    effective_until DATE DEFAULT NULL,
    FOREIGN KEY (RouteID) REFERENCES routes(RouteID)
);
CREATE INDEX idx_route_class ON fares(RouteID, ClassType);

CREATE TABLE bookings (
    TicketID INTEGER PRIMARY KEY AUTOINCREMENT,
    PassengerID INTEGER,
    ScheduleID INTEGER,
    BookingDate DATETIME,
    SeatStatus TEXT DEFAULT 'Confirmed',
    DynamicPricingFactor REAL DEFAULT 1.00,
    seat_id INTEGER DEFAULT NULL,
    pnr_number TEXT,
    FOREIGN KEY (PassengerID) REFERENCES passengers(PassengerID),
    FOREIGN KEY (ScheduleID) REFERENCES schedules(ScheduleID)
);
CREATE INDEX idx_pnr ON bookings(pnr_number);
CREATE INDEX idx_booking_status ON bookings(SeatStatus);
CREATE INDEX idx_passenger ON bookings(PassengerID);

CREATE TABLE seat_availability (
    availability_id INTEGER PRIMARY KEY AUTOINCREMENT,
    seat_id INTEGER NOT NULL,
    ScheduleID INTEGER NOT NULL,
    journey_date DATE NOT NULL,
    is_booked INTEGER DEFAULT 0,
    locked_until TIMESTAMP NULL,
    FOREIGN KEY (seat_id) REFERENCES seats(seat_id) ON DELETE CASCADE,
    FOREIGN KEY (ScheduleID) REFERENCES schedules(ScheduleID) ON DELETE CASCADE,
    UNIQUE (seat_id, ScheduleID, journey_date)
);
CREATE INDEX idx_schedule_date ON seat_availability(ScheduleID, journey_date, is_booked);

CREATE TABLE payments (
    PaymentID INTEGER PRIMARY KEY AUTOINCREMENT,
    TicketID INTEGER,
    Amount REAL,
    PaymentDate DATETIME,
    Method TEXT,
    payment_status TEXT DEFAULT 'Completed',
    transaction_id TEXT,
    FOREIGN KEY (TicketID) REFERENCES bookings(TicketID)
);
CREATE INDEX idx_transaction ON payments(transaction_id);
CREATE INDEX idx_payment_status ON payments(payment_status);

CREATE TABLE cancellations (
    CancellationID INTEGER PRIMARY KEY AUTOINCREMENT,
    TicketID INTEGER,
    CancellationDate DATETIME,
    Reason TEXT,
    refund_percentage REAL DEFAULT 90.00,
    processed_by INTEGER,
    FOREIGN KEY (TicketID) REFERENCES bookings(TicketID),
    FOREIGN KEY (processed_by) REFERENCES users(UserID)
);
CREATE INDEX idx_ticket ON cancellations(TicketID);

CREATE TABLE refunds (
    RefundID INTEGER PRIMARY KEY AUTOINCREMENT,
    CancellationID INTEGER,
    RefundAmount REAL,
    Status TEXT DEFAULT 'Pending',
    RefundDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CancellationID) REFERENCES cancellations(CancellationID)
);

CREATE TABLE audit_logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    UserID INTEGER,
    action_type TEXT NOT NULL,
    table_name TEXT NOT NULL,
    record_id INTEGER,
    old_value TEXT,
    new_value TEXT,
    ip_address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES users(UserID) ON DELETE SET NULL
);
CREATE INDEX idx_user_action ON audit_logs(UserID, action_type);
CREATE INDEX idx_created_at ON audit_logs(created_at);

"""

def extract_inserts(sql):
    ins = []
    # Find all generic inserts
    pattern = re.compile(r"^INSERT INTO.*?;\s*$", re.MULTILINE | re.DOTALL)
    for match in pattern.finditer(sql):
        stmt = match.group(0).strip()
        # Some cleanup for SQLite
        stmt = stmt.replace("TRUE", "1").replace("FALSE", "0")
        ins.append(stmt)
    return ins

inserts = extract_inserts(sql_text)

# We need to simulate the CALL generate_... procedures since they were generating seats
# We'll generate seats using python instead of SQL procedures.
def generate_seats():
    seat_inserts = []
    
    def ac_berth(coach_id):
        for i in range(1, 17):
            seat_inserts.append(f"INSERT INTO seats (coach_id, seat_number, seat_type) VALUES ({coach_id}, '{i}L', 'Berth_Lower');")
            seat_inserts.append(f"INSERT INTO seats (coach_id, seat_number, seat_type) VALUES ({coach_id}, '{i}U', 'Berth_Upper');")
            
    def ac_seat(coach_id):
        for i in range(1, 13):
            for c, t in zip(['A','B','C','D'], ['Window','Aisle','Aisle','Window']):
                seat_inserts.append(f"INSERT INTO seats (coach_id, seat_number, seat_type) VALUES ({coach_id}, '{i}{c}', '{t}');")
                
    def snigdha(coach_id):
        for i in range(1, 19):
            for c, t in zip(['A','B','C'], ['Window','Aisle','Window']):
                seat_inserts.append(f"INSERT INTO seats (coach_id, seat_number, seat_type) VALUES ({coach_id}, '{i}{c}', '{t}');")
                
    def s_chair(coach_id):
        for i in range(1, 16):
            for c, t in zip(['A','B','C','D'], ['Window','Aisle','Aisle','Window']):
                seat_inserts.append(f"INSERT INTO seats (coach_id, seat_number, seat_type) VALUES ({coach_id}, '{i}{c}', '{t}');")
                
    def shovan(coach_id):
        for i in range(1, 19):
            for c, t in zip(['A','B','C','D'], ['Window','Aisle','Aisle','Window']):
                seat_inserts.append(f"INSERT INTO seats (coach_id, seat_number, seat_type) VALUES ({coach_id}, '{i}{c}', '{t}');")

    # 701 Subarna
    ac_berth(1) # KA-1
    ac_seat(2)  # KA-2
    snigdha(3)  # KHA
    s_chair(4)  # GA-1
    s_chair(5)  # GA-2
    shovan(6)   # CHA-1
    shovan(7)   # CHA-2
    
    # 702 Sonar Bangla
    ac_berth(8)
    ac_seat(9)
    snigdha(10)
    snigdha(11)
    s_chair(12)
    s_chair(13)
    shovan(14)
    
    # 757 Parabat
    ac_seat(15)
    snigdha(16)
    s_chair(17)
    s_chair(18)
    shovan(19)
    
    # 715 Silk City
    ac_seat(20)
    snigdha(21)
    s_chair(22)
    s_chair(23)
    shovan(24)
    
    return seat_inserts

python_generated_seats = generate_seats()
all_statements = SQLITE_TABLES.split(";") + inserts + python_generated_seats
all_statements = [s.strip() for s in all_statements if s.strip()]

client = libsql_client.create_client_sync(
    url=os.environ.get('TURSO_DATABASE_URL').replace('libsql://', 'https://'),
    auth_token=os.environ.get('TURSO_AUTH_TOKEN')
)

try:
    print("Executing schema and data setup...")
    client.batch([libsql_client.Statement(s) for s in all_statements])
    print("Database setup complete.")
except Exception as e:
    print(f"Error during execution: {str(e)}")
finally:
    client.close()
