-- ============================================
-- Railway Reservation Management System
-- MERGED Database Schema (MySQL / MariaDB)
-- Based on Bangladesh Railway
-- Merges existing railway_db + new normalized schema
-- ============================================

DROP DATABASE IF EXISTS railway_db;
CREATE DATABASE railway_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE railway_db;

-- ============================================
-- 1. USERS (existing structure preserved)
-- ============================================
CREATE TABLE users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    FullName VARCHAR(100),
    Role VARCHAR(20) DEFAULT 'Passenger',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_email (Email)
) ENGINE=InnoDB;

-- ============================================
-- 2. PASSENGERS (existing structure preserved)
-- ============================================
CREATE TABLE passengers (
    PassengerID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    PassportNumber VARCHAR(50),
    FullName VARCHAR(100),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Nationality VARCHAR(50) DEFAULT 'Bangladeshi',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES users(UserID) ON DELETE CASCADE,
    INDEX idx_user_id (UserID)
) ENGINE=InnoDB;

-- ============================================
-- 3. STATIONS (NEW - from new schema)
-- ============================================
CREATE TABLE stations (
    station_id INT PRIMARY KEY AUTO_INCREMENT,
    station_code VARCHAR(10) UNIQUE NOT NULL,
    station_name VARCHAR(100) NOT NULL,
    station_name_bn VARCHAR(100),
    division VARCHAR(50) NOT NULL,
    city VARCHAR(100) NOT NULL,
    latitude DECIMAL(10, 8),
    longitude DECIMAL(11, 8),
    is_junction BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_station_code (station_code),
    INDEX idx_division (division)
) ENGINE=InnoDB;

-- ============================================
-- 4. TRAINS (existing structure preserved + enhancements)
-- ============================================
CREATE TABLE trains (
    TrainNumber VARCHAR(20) NOT NULL PRIMARY KEY,
    TrainName VARCHAR(100) NOT NULL,
    train_type ENUM('Intercity', 'Express', 'Mail', 'Commuter') DEFAULT 'Intercity',
    TotalSeats INT NOT NULL DEFAULT 400,
    Speed INT DEFAULT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_train_type (train_type)
) ENGINE=InnoDB;

-- ============================================
-- 5. ROUTES (existing structure preserved + enhancements)
-- ============================================
CREATE TABLE routes (
    RouteID INT PRIMARY KEY AUTO_INCREMENT,
    SourceStation VARCHAR(100) NOT NULL,
    DestinationStation VARCHAR(100) NOT NULL,
    Distance DECIMAL(8,2) DEFAULT NULL,
    estimated_duration_minutes INT DEFAULT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    INDEX idx_from_to (SourceStation, DestinationStation)
) ENGINE=InnoDB;

-- ============================================
-- 6. ROUTE STOPS (NEW - Intermediate Stations)
-- ============================================
CREATE TABLE route_stops (
    stop_id INT PRIMARY KEY AUTO_INCREMENT,
    RouteID INT NOT NULL,
    station_id INT NOT NULL,
    stop_sequence INT NOT NULL,
    distance_from_start_km DECIMAL(8,2) NOT NULL,
    platform_number VARCHAR(10),
    FOREIGN KEY (RouteID) REFERENCES routes(RouteID) ON DELETE CASCADE,
    FOREIGN KEY (station_id) REFERENCES stations(station_id),
    UNIQUE KEY unique_route_stop (RouteID, station_id),
    INDEX idx_route_sequence (RouteID, stop_sequence)
) ENGINE=InnoDB;

-- ============================================
-- 7. SCHEDULES (existing structure preserved + enhancements)
-- ============================================
CREATE TABLE schedules (
    ScheduleID INT PRIMARY KEY AUTO_INCREMENT,
    TrainNumber VARCHAR(20),
    RouteID INT,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    off_day ENUM('None','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') DEFAULT 'None',
    is_active BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (TrainNumber) REFERENCES trains(TrainNumber),
    FOREIGN KEY (RouteID) REFERENCES routes(RouteID),
    INDEX idx_train_route (TrainNumber, RouteID)
) ENGINE=InnoDB;

-- ============================================
-- 8. COACHES (NEW - Train Composition)
-- ============================================
CREATE TABLE coaches (
    coach_id INT PRIMARY KEY AUTO_INCREMENT,
    TrainNumber VARCHAR(20) NOT NULL,
    coach_number VARCHAR(20) NOT NULL,
    class_code ENUM('AC_B','AC_S','SNIGDHA','F_BERTH','F_SEAT','S_CHAIR','SHOVAN','SHULOV') NOT NULL,
    class_name VARCHAR(50) NOT NULL,
    total_seats INT NOT NULL,
    coach_position INT NOT NULL,
    has_ac BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (TrainNumber) REFERENCES trains(TrainNumber) ON DELETE CASCADE,
    UNIQUE KEY unique_train_coach (TrainNumber, coach_number),
    INDEX idx_train_class (TrainNumber, class_code)
) ENGINE=InnoDB;

-- ============================================
-- 9. SEATS (NEW)
-- ============================================
CREATE TABLE seats (
    seat_id INT PRIMARY KEY AUTO_INCREMENT,
    coach_id INT NOT NULL,
    seat_number VARCHAR(10) NOT NULL,
    seat_type ENUM('Window','Aisle','Middle','Berth_Lower','Berth_Upper') DEFAULT 'Aisle',
    is_available BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (coach_id) REFERENCES coaches(coach_id) ON DELETE CASCADE,
    UNIQUE KEY unique_coach_seat (coach_id, seat_number),
    INDEX idx_coach_availability (coach_id, is_available)
) ENGINE=InnoDB;

-- ============================================
-- 10. FARES (existing structure preserved + enhancements)
-- ============================================
CREATE TABLE fares (
    FareID INT PRIMARY KEY AUTO_INCREMENT,
    RouteID INT,
    ClassType VARCHAR(50),
    TotalAmount DECIMAL(10,2),
    class_multiplier DECIMAL(4,2) DEFAULT 1.00,
    effective_from DATE DEFAULT NULL,
    effective_until DATE DEFAULT NULL,
    FOREIGN KEY (RouteID) REFERENCES routes(RouteID),
    INDEX idx_route_class (RouteID, ClassType)
) ENGINE=InnoDB;

-- ============================================
-- 11. BOOKINGS / TICKETS (existing structure preserved)
-- ============================================
CREATE TABLE bookings (
    TicketID INT PRIMARY KEY AUTO_INCREMENT,
    PassengerID INT,
    ScheduleID INT,
    BookingDate DATETIME,
    SeatStatus VARCHAR(20) DEFAULT 'Confirmed',
    DynamicPricingFactor DECIMAL(3,2) DEFAULT 1.00,
    seat_id INT DEFAULT NULL,
    pnr_number VARCHAR(20),
    FOREIGN KEY (PassengerID) REFERENCES passengers(PassengerID),
    FOREIGN KEY (ScheduleID) REFERENCES schedules(ScheduleID),
    INDEX idx_pnr (pnr_number),
    INDEX idx_booking_status (SeatStatus),
    INDEX idx_passenger (PassengerID)
) ENGINE=InnoDB;

-- ============================================
-- 12. SEAT AVAILABILITY (NEW - Performance Optimization)
-- ============================================
CREATE TABLE seat_availability (
    availability_id INT PRIMARY KEY AUTO_INCREMENT,
    seat_id INT NOT NULL,
    ScheduleID INT NOT NULL,
    journey_date DATE NOT NULL,
    is_booked BOOLEAN DEFAULT FALSE,
    locked_until TIMESTAMP NULL,
    FOREIGN KEY (seat_id) REFERENCES seats(seat_id) ON DELETE CASCADE,
    FOREIGN KEY (ScheduleID) REFERENCES schedules(ScheduleID) ON DELETE CASCADE,
    UNIQUE KEY unique_seat_schedule_date (seat_id, ScheduleID, journey_date),
    INDEX idx_schedule_date (ScheduleID, journey_date, is_booked)
) ENGINE=InnoDB;

-- ============================================
-- 13. PAYMENTS (existing structure preserved)
-- ============================================
CREATE TABLE payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    TicketID INT,
    Amount DECIMAL(10,2),
    PaymentDate DATETIME,
    Method VARCHAR(50),
    payment_status ENUM('Pending','Completed','Failed','Refunded') DEFAULT 'Completed',
    transaction_id VARCHAR(100),
    FOREIGN KEY (TicketID) REFERENCES bookings(TicketID),
    INDEX idx_transaction (transaction_id),
    INDEX idx_payment_status (payment_status)
) ENGINE=InnoDB;

-- ============================================
-- 14. CANCELLATIONS (existing structure preserved)
-- ============================================
CREATE TABLE cancellations (
    CancellationID INT PRIMARY KEY AUTO_INCREMENT,
    TicketID INT,
    CancellationDate DATETIME,
    Reason TEXT,
    refund_percentage DECIMAL(5,2) DEFAULT 90.00,
    processed_by INT,
    FOREIGN KEY (TicketID) REFERENCES bookings(TicketID),
    FOREIGN KEY (processed_by) REFERENCES users(UserID),
    INDEX idx_ticket (TicketID)
) ENGINE=InnoDB;

-- ============================================
-- 15. REFUNDS (existing structure preserved)
-- ============================================
CREATE TABLE refunds (
    RefundID INT PRIMARY KEY AUTO_INCREMENT,
    CancellationID INT,
    RefundAmount DECIMAL(10,2),
    Status VARCHAR(20) DEFAULT 'Pending',
    RefundDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CancellationID) REFERENCES cancellations(CancellationID)
) ENGINE=InnoDB;

-- ============================================
-- 16. AUDIT LOGS (NEW - Security & Tracking)
-- ============================================
CREATE TABLE audit_logs (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    action_type VARCHAR(50) NOT NULL,
    table_name VARCHAR(50) NOT NULL,
    record_id INT,
    old_value TEXT,
    new_value TEXT,
    ip_address VARCHAR(45),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES users(UserID) ON DELETE SET NULL,
    INDEX idx_user_action (UserID, action_type),
    INDEX idx_created_at (created_at)
) ENGINE=InnoDB;


-- ============================================
-- SEED DATA: USERS
-- ============================================
INSERT INTO users (UserID, Username, PasswordHash, Email, FullName, Role) VALUES
(1, 'guest_user', 'guest', 'guest@railway.com', 'Guest User', 'Passenger'),
(2, 'admin', 'ARNAB938@', 'admin@railway.gov.bd', 'System Admin', 'Admin');


-- ============================================
-- SEED DATA: STATIONS
-- ============================================
INSERT INTO stations (station_code, station_name, station_name_bn, division, city, latitude, longitude, is_junction) VALUES
-- Dhaka Division
('DKKA', 'Kamalapur', 'কমলাপুর', 'Dhaka', 'Dhaka', 23.7298, 90.4217, TRUE),
('DAIR', 'Airport', 'বিমানবন্দর', 'Dhaka', 'Dhaka', 23.8433, 90.3979, FALSE),
('DJOY', 'Joydebpur', 'জয়দেবপুর', 'Dhaka', 'Gazipur', 24.0958, 90.3861, TRUE),
('DTAN', 'Tangail', 'টাঙ্গাইল', 'Dhaka', 'Tangail', 24.2484, 89.9168, FALSE),
('DMYM', 'Mymensingh', 'ময়মনসিংহ', 'Dhaka', 'Mymensingh', 24.7471, 90.4203, FALSE),
-- Chattogram Division
('CCTG', 'Chattogram', 'চট্টগ্রাম', 'Chattogram', 'Chattogram', 22.3569, 91.7832, TRUE),
('CFEN', 'Feni', 'ফেনী', 'Chattogram', 'Feni', 23.0159, 91.3976, FALSE),
('CCUM', 'Cumilla', 'কুমিল্লা', 'Chattogram', 'Cumilla', 23.4607, 91.1809, TRUE),
('CLKP', 'Laksam', 'লাকসাম', 'Chattogram', 'Cumilla', 23.2423, 91.1199, FALSE),
-- Rajshahi Division
('RRAJ', 'Rajshahi', 'রাজশাহী', 'Rajshahi', 'Rajshahi', 24.3745, 88.6042, TRUE),
('RISH', 'Ishwardi', 'ঈশ্বরদী', 'Rajshahi', 'Pabna', 24.1313, 89.0525, TRUE),
('RPAB', 'Pabna', 'পাবনা', 'Rajshahi', 'Pabna', 24.0064, 89.2372, FALSE),
-- Khulna Division
('KKHU', 'Khulna', 'খুলনা', 'Khulna', 'Khulna', 22.8456, 89.5403, TRUE),
('KJAS', 'Jashore', 'যশোর', 'Khulna', 'Jashore', 23.1665, 89.2081, TRUE),
-- Sylhet Division
('SSYL', 'Sylhet', 'সিলেট', 'Sylhet', 'Sylhet', 24.8949, 91.8687, TRUE),
('SSRI', 'Srimangal', 'শ্রীমঙ্গল', 'Sylhet', 'Moulvibazar', 24.3065, 91.7296, FALSE),
-- Rangpur Division
('NRAN', 'Rangpur', 'রংপুর', 'Rangpur', 'Rangpur', 25.7439, 89.2752, TRUE),
('NDIN', 'Dinajpur', 'দিনাজপুর', 'Rangpur', 'Dinajpur', 25.6279, 88.6332, FALSE),
-- Cox's Bazar & Barishal
('CCXB', 'Cox''s Bazar', 'কক্সবাজার', 'Chattogram', 'Cox''s Bazar', 21.4272, 92.0058, FALSE),
('BBAR', 'Barishal', 'বরিশাল', 'Barishal', 'Barishal', 22.7010, 90.3535, FALSE);


-- ============================================
-- SEED DATA: TRAINS
-- ============================================
INSERT INTO trains (TrainNumber, TrainName, train_type, TotalSeats, Speed) VALUES
('701', 'সুবর্ণ এক্সপ্রেস | Subarna Express', 'Intercity', 450, 80),
('702', 'সোনার বাংলা এক্সপ্রেস | Sonar Bangla Express', 'Intercity', 400, 80),
('703', 'ঈগল এক্সপ্রেস | Eagle Express', 'Express', 350, 70),
('704', 'মহানগর এক্সপ্রেস | Mohanagar Express', 'Intercity', 380, 75),
('705', 'মহানগর প্রভাতী | Mohanagar Provati', 'Intercity', 360, 75),
('706', 'মহানগর গোধূলী | Mohanagar Godhuli', 'Intercity', 360, 75),
('707', 'কালনী এক্সপ্রেস | Kalni Express', 'Express', 320, 65),
('708', 'জয়ন্তিকা এক্সপ্রেস | Joyantika Express', 'Intercity', 340, 70),
('709', 'উপকূল এক্সপ্রেস | Upakul Express', 'Express', 300, 65),
('710', 'তূর্ণা এক্সপ্রেস | Turna Express', 'Intercity', 420, 80),
('711', 'ঢাকা মেইল | Dhaka Mail', 'Mail', 500, 60),
('712', 'চট্টগ্রাম মেইল | Chittagong Mail', 'Mail', 480, 60),
('713', 'রাজশাহী এক্সপ্রেস | Rajshahi Express', 'Intercity', 380, 70),
('714', 'বরেন্দ্র এক্সপ্রেস | Barendra Express', 'Intercity', 360, 70),
('715', 'সিল্ক সিটি এক্সপ্রেস | Silk City Express', 'Intercity', 340, 70),
('721', 'সোনার বাংলা | Sonar Bangla', 'Intercity', 380, 80),
('757', 'পারাবত এক্সপ্রেস | Parabat Express', 'Intercity', 294, 70),
('727', 'সুন্দরবন এক্সপ্রেস | Sundarban Express', 'Intercity', 400, 70),
('769', 'একতা এক্সপ্রেস | Ekota Express', 'Intercity', 380, 75),
('741', 'তিতুমীর এক্সপ্রেস | Titumir Express', 'Intercity', 360, 70),
('787', 'সিল্ক সিটি | Silk City', 'Intercity', 340, 70),
('793', 'দ্রুতযান এক্সপ্রেস | Drutojan Express', 'Express', 350, 65);


-- ============================================
-- SEED DATA: ROUTES (existing Bangla names preserved)
-- ============================================
INSERT INTO routes (RouteID, SourceStation, DestinationStation, Distance, estimated_duration_minutes) VALUES
(1, 'ঢাকা', 'চট্টগ্রাম', 320.00, 390),
(2, 'চট্টগ্রাম', 'ঢাকা', 320.00, 390),
(3, 'ঢাকা', 'রাজশাহী', 256.00, 390),
(4, 'রাজশাহী', 'ঢাকা', 256.00, 390),
(5, 'ঢাকা', 'খুলনা', 327.00, 480),
(6, 'খুলনা', 'ঢাকা', 327.00, 480),
(7, 'ঢাকা', 'সিলেট', 295.00, 420),
(8, 'সিলেট', 'ঢাকা', 295.00, 420),
(9, 'ঢাকা', 'রংপুর', 404.00, 540),
(10, 'রংপুর', 'ঢাকা', 404.00, 540),
(11, 'ঢাকা', 'বরিশাল', 250.00, 360),
(12, 'বরিশাল', 'ঢাকা', 250.00, 360),
(13, 'চট্টগ্রাম', 'কক্সবাজার', 150.00, 240),
(14, 'কক্সবাজার', 'চট্টগ্রাম', 150.00, 240),
(15, 'চট্টগ্রাম', 'সিলেট', 340.00, 480),
(16, 'সিলেট', 'চট্টগ্রাম', 340.00, 480);


-- ============================================
-- SEED DATA: ROUTE STOPS
-- ============================================
-- Dhaka to Chattogram stops
INSERT INTO route_stops (RouteID, station_id, stop_sequence, distance_from_start_km, platform_number) VALUES
(1, 1, 1, 0, '1'),
(1, 8, 2, 98, '2'),
(1, 7, 3, 142, '1'),
(1, 6, 4, 320, '3');
-- Chattogram to Dhaka stops
INSERT INTO route_stops (RouteID, station_id, stop_sequence, distance_from_start_km, platform_number) VALUES
(2, 6, 1, 0, '2'),
(2, 7, 2, 178, '1'),
(2, 8, 3, 222, '2'),
(2, 1, 4, 320, '1');
-- Dhaka to Sylhet stops
INSERT INTO route_stops (RouteID, station_id, stop_sequence, distance_from_start_km, platform_number) VALUES
(7, 1, 1, 0, '2'),
(7, 16, 2, 227, '1'),
(7, 15, 3, 295, '1');


-- ============================================
-- SEED DATA: SCHEDULES
-- ============================================
INSERT INTO schedules (ScheduleID, TrainNumber, RouteID, DepartureTime, ArrivalTime, off_day) VALUES
(1, '701', 1, '2026-03-25 07:00:00', '2026-03-25 13:30:00', 'Monday'),
(2, '701', 2, '2026-03-25 15:00:00', '2026-03-25 21:30:00', 'Monday'),
(3, '702', 1, '2026-03-25 08:30:00', '2026-03-25 15:00:00', 'Wednesday'),
(4, '702', 2, '2026-03-25 16:30:00', '2026-03-25 23:00:00', 'Wednesday'),
(5, '704', 3, '2026-03-25 06:30:00', '2026-03-25 13:00:00', 'None'),
(6, '704', 4, '2026-03-25 14:30:00', '2026-03-25 21:00:00', 'None'),
(7, '715', 7, '2026-03-25 07:30:00', '2026-03-25 14:30:00', 'Tuesday'),
(8, '715', 8, '2026-03-25 15:30:00', '2026-03-25 22:30:00', 'Tuesday'),
(9, '709', 5, '2026-03-25 07:45:00', '2026-03-25 15:45:00', 'None'),
(10, '709', 6, '2026-03-25 16:15:00', '2026-03-26 00:15:00', 'None'),
(11, '710', 1, '2026-03-25 22:00:00', '2026-03-26 04:30:00', 'None'),
(12, '710', 2, '2026-03-25 23:00:00', '2026-03-26 05:30:00', 'None'),
(13, '714', 3, '2026-03-25 22:30:00', '2026-03-26 05:00:00', 'None'),
(14, '711', 1, '2026-03-25 06:00:00', '2026-03-25 14:30:00', 'None'),
(15, '708', 7, '2026-03-25 09:00:00', '2026-03-25 16:00:00', 'None'),
(16, '707', 7, '2026-03-25 20:00:00', '2026-03-26 03:00:00', 'None'),
-- NEW schedules from new schema trains
(17, '721', 1, '2026-04-01 07:00:00', '2026-04-01 13:30:00', 'Wednesday'),
(18, '757', 7, '2026-04-01 06:20:00', '2026-04-01 13:30:00', 'Tuesday'),
(19, '727', 5, '2026-04-01 22:00:00', '2026-04-02 06:00:00', 'Tuesday'),
(20, '769', 3, '2026-04-01 09:00:00', '2026-04-01 15:30:00', 'None');


-- ============================================
-- SEED DATA: COACHES
-- ============================================
-- Subarna Express (701) composition
INSERT INTO coaches (TrainNumber, coach_number, class_code, class_name, total_seats, coach_position, has_ac) VALUES
('701', 'KA-1', 'AC_B', 'AC Berth', 32, 1, TRUE),
('701', 'KA-2', 'AC_S', 'AC Seat', 48, 2, TRUE),
('701', 'KHA', 'SNIGDHA', 'Snigdha', 54, 3, TRUE),
('701', 'GA-1', 'S_CHAIR', 'Shovan Chair', 60, 4, FALSE),
('701', 'GA-2', 'S_CHAIR', 'Shovan Chair', 60, 5, FALSE),
('701', 'CHA-1', 'SHOVAN', 'Shovan', 72, 6, FALSE),
('701', 'CHA-2', 'SHOVAN', 'Shovan', 72, 7, FALSE);

-- Sonar Bangla (702) composition
INSERT INTO coaches (TrainNumber, coach_number, class_code, class_name, total_seats, coach_position, has_ac) VALUES
('702', 'KA-1', 'AC_B', 'AC Berth', 32, 1, TRUE),
('702', 'KA-2', 'AC_S', 'AC Seat', 48, 2, TRUE),
('702', 'KHA-1', 'SNIGDHA', 'Snigdha', 54, 3, TRUE),
('702', 'KHA-2', 'SNIGDHA', 'Snigdha', 54, 4, TRUE),
('702', 'GA-1', 'S_CHAIR', 'Shovan Chair', 60, 5, FALSE),
('702', 'GA-2', 'S_CHAIR', 'Shovan Chair', 60, 6, FALSE),
('702', 'CHA', 'SHOVAN', 'Shovan', 72, 7, FALSE);

-- Parabat Express (757) composition
INSERT INTO coaches (TrainNumber, coach_number, class_code, class_name, total_seats, coach_position, has_ac) VALUES
('757', 'KA', 'AC_S', 'AC Seat', 48, 1, TRUE),
('757', 'KHA', 'SNIGDHA', 'Snigdha', 54, 2, TRUE),
('757', 'GA-1', 'S_CHAIR', 'Shovan Chair', 60, 3, FALSE),
('757', 'GA-2', 'S_CHAIR', 'Shovan Chair', 60, 4, FALSE),
('757', 'CHA', 'SHOVAN', 'Shovan', 72, 5, FALSE);

-- Silk City Express (715) composition
INSERT INTO coaches (TrainNumber, coach_number, class_code, class_name, total_seats, coach_position, has_ac) VALUES
('715', 'KA', 'AC_S', 'AC Seat', 48, 1, TRUE),
('715', 'KHA', 'SNIGDHA', 'Snigdha', 54, 2, TRUE),
('715', 'GA-1', 'S_CHAIR', 'Shovan Chair', 60, 3, FALSE),
('715', 'GA-2', 'S_CHAIR', 'Shovan Chair', 60, 4, FALSE),
('715', 'CHA', 'SHOVAN', 'Shovan', 72, 5, FALSE);


-- ============================================
-- SEED DATA: SEATS (using procedures)
-- ============================================
DELIMITER //

-- Generate seats for AC_B coach (Berth style - 32 seats)
CREATE PROCEDURE generate_ac_berth_seats(IN p_coach_id INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 16 DO
        INSERT INTO seats (coach_id, seat_number, seat_type) VALUES
            (p_coach_id, CONCAT(i, 'L'), 'Berth_Lower'),
            (p_coach_id, CONCAT(i, 'U'), 'Berth_Upper');
        SET i = i + 1;
    END WHILE;
END//

-- Generate seats for AC_S coach (48 seats - 4 seats per row)
CREATE PROCEDURE generate_ac_seat_coach(IN p_coach_id INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 12 DO
        INSERT INTO seats (coach_id, seat_number, seat_type) VALUES
            (p_coach_id, CONCAT(i, 'A'), 'Window'),
            (p_coach_id, CONCAT(i, 'B'), 'Aisle'),
            (p_coach_id, CONCAT(i, 'C'), 'Aisle'),
            (p_coach_id, CONCAT(i, 'D'), 'Window');
        SET i = i + 1;
    END WHILE;
END//

-- Generate seats for SNIGDHA coach (54 seats)
CREATE PROCEDURE generate_snigdha_coach(IN p_coach_id INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 18 DO
        INSERT INTO seats (coach_id, seat_number, seat_type) VALUES
            (p_coach_id, CONCAT(i, 'A'), 'Window'),
            (p_coach_id, CONCAT(i, 'B'), 'Aisle'),
            (p_coach_id, CONCAT(i, 'C'), 'Window');
        SET i = i + 1;
    END WHILE;
END//

-- Generate seats for S_CHAIR coach (60 seats)
CREATE PROCEDURE generate_s_chair_coach(IN p_coach_id INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 15 DO
        INSERT INTO seats (coach_id, seat_number, seat_type) VALUES
            (p_coach_id, CONCAT(i, 'A'), 'Window'),
            (p_coach_id, CONCAT(i, 'B'), 'Aisle'),
            (p_coach_id, CONCAT(i, 'C'), 'Aisle'),
            (p_coach_id, CONCAT(i, 'D'), 'Window');
        SET i = i + 1;
    END WHILE;
END//

-- Generate seats for SHOVAN coach (72 seats)
CREATE PROCEDURE generate_shovan_coach(IN p_coach_id INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 18 DO
        INSERT INTO seats (coach_id, seat_number, seat_type) VALUES
            (p_coach_id, CONCAT(i, 'A'), 'Window'),
            (p_coach_id, CONCAT(i, 'B'), 'Aisle'),
            (p_coach_id, CONCAT(i, 'C'), 'Aisle'),
            (p_coach_id, CONCAT(i, 'D'), 'Window');
        SET i = i + 1;
    END WHILE;
END//

DELIMITER ;

-- Execute procedures to generate seats for Subarna Express (701)
CALL generate_ac_berth_seats(1);   -- KA-1 AC_B
CALL generate_ac_seat_coach(2);    -- KA-2 AC_S
CALL generate_snigdha_coach(3);    -- KHA SNIGDHA
CALL generate_s_chair_coach(4);    -- GA-1 S_CHAIR
CALL generate_s_chair_coach(5);    -- GA-2 S_CHAIR
CALL generate_shovan_coach(6);     -- CHA-1 SHOVAN
CALL generate_shovan_coach(7);     -- CHA-2 SHOVAN

-- Execute procedures to generate seats for Sonar Bangla (702)
CALL generate_ac_berth_seats(8);   -- KA-1 AC_B
CALL generate_ac_seat_coach(9);    -- KA-2 AC_S
CALL generate_snigdha_coach(10);   -- KHA-1 SNIGDHA
CALL generate_snigdha_coach(11);   -- KHA-2 SNIGDHA
CALL generate_s_chair_coach(12);   -- GA-1 S_CHAIR
CALL generate_s_chair_coach(13);   -- GA-2 S_CHAIR
CALL generate_shovan_coach(14);    -- CHA SHOVAN

-- Execute procedures to generate seats for Parabat Express (757)
CALL generate_ac_seat_coach(15);   -- KA AC_S
CALL generate_snigdha_coach(16);   -- KHA SNIGDHA
CALL generate_s_chair_coach(17);   -- GA-1 S_CHAIR
CALL generate_s_chair_coach(18);   -- GA-2 S_CHAIR
CALL generate_shovan_coach(19);    -- CHA SHOVAN

-- Execute procedures to generate seats for Silk City Express (715)
CALL generate_ac_seat_coach(20);   -- KA AC_S
CALL generate_snigdha_coach(21);   -- KHA SNIGDHA
CALL generate_s_chair_coach(22);   -- GA-1 S_CHAIR
CALL generate_s_chair_coach(23);   -- GA-2 S_CHAIR
CALL generate_shovan_coach(24);    -- CHA SHOVAN


-- ============================================
-- SEED DATA: FARES
-- ============================================
INSERT INTO fares (FareID, RouteID, ClassType, TotalAmount, class_multiplier, effective_from) VALUES
-- Dhaka to Chattogram
(1, 1, 'AC Berth', 1398.00, 4.91, '2024-01-01'),
(2, 1, 'AC Seat', 1025.00, 3.60, '2024-01-01'),
(3, 1, 'Snigdha', 855.00, 3.00, '2024-01-01'),
(4, 1, 'Shovan Chair', 450.00, 1.58, '2024-01-01'),
(5, 1, 'Shovan', 285.00, 1.00, '2024-01-01'),
-- Chattogram to Dhaka
(6, 2, 'AC Berth', 1398.00, 4.91, '2024-01-01'),
(7, 2, 'AC Seat', 1025.00, 3.60, '2024-01-01'),
(8, 2, 'Snigdha', 855.00, 3.00, '2024-01-01'),
(9, 2, 'Shovan Chair', 450.00, 1.58, '2024-01-01'),
(10, 2, 'Shovan', 285.00, 1.00, '2024-01-01'),
-- Dhaka to Rajshahi
(11, 3, 'AC Berth', 1300.00, 4.50, '2024-01-01'),
(12, 3, 'AC Seat', 950.00, 3.30, '2024-01-01'),
(13, 3, 'Snigdha', 800.00, 2.80, '2024-01-01'),
(14, 3, 'Shovan Chair', 400.00, 1.40, '2024-01-01'),
(15, 3, 'Shovan', 250.00, 1.00, '2024-01-01'),
-- Rajshahi to Dhaka
(16, 4, 'AC Berth', 1300.00, 4.50, '2024-01-01'),
(17, 4, 'AC Seat', 950.00, 3.30, '2024-01-01'),
(18, 4, 'Snigdha', 800.00, 2.80, '2024-01-01'),
(19, 4, 'Shovan Chair', 400.00, 1.40, '2024-01-01'),
(20, 4, 'Shovan', 250.00, 1.00, '2024-01-01'),
-- Dhaka to Khulna
(21, 5, 'AC Berth', 1425.00, 4.83, '2024-01-01'),
(22, 5, 'AC Seat', 1050.00, 3.56, '2024-01-01'),
(23, 5, 'Snigdha', 870.00, 2.95, '2024-01-01'),
(24, 5, 'Shovan Chair', 465.00, 1.58, '2024-01-01'),
(25, 5, 'Shovan', 295.00, 1.00, '2024-01-01'),
-- Khulna to Dhaka
(26, 6, 'AC Berth', 1425.00, 4.83, '2024-01-01'),
(27, 6, 'AC Seat', 1050.00, 3.56, '2024-01-01'),
(28, 6, 'Snigdha', 870.00, 2.95, '2024-01-01'),
(29, 6, 'Shovan Chair', 465.00, 1.58, '2024-01-01'),
(30, 6, 'Shovan', 295.00, 1.00, '2024-01-01'),
-- Dhaka to Sylhet
(31, 7, 'AC Seat', 950.00, 3.58, '2024-01-01'),
(32, 7, 'Snigdha', 780.00, 2.94, '2024-01-01'),
(33, 7, 'Shovan Chair', 425.00, 1.60, '2024-01-01'),
(34, 7, 'Shovan', 265.00, 1.00, '2024-01-01'),
-- Sylhet to Dhaka
(35, 8, 'AC Seat', 950.00, 3.58, '2024-01-01'),
(36, 8, 'Snigdha', 780.00, 2.94, '2024-01-01'),
(37, 8, 'Shovan Chair', 425.00, 1.60, '2024-01-01'),
(38, 8, 'Shovan', 265.00, 1.00, '2024-01-01'),
-- Dhaka to Rangpur
(39, 9, 'Shovan Chair', 480.00, 1.60, '2024-01-01'),
(40, 9, 'Shovan', 300.00, 1.00, '2024-01-01');


-- ============================================
-- VIEWS FOR CONVENIENCE
-- ============================================

-- View: Available trains with route info (used by Flask app)
CREATE VIEW v_train_schedules AS
SELECT
    t.TrainNumber,
    t.TrainName,
    t.train_type,
    t.TotalSeats,
    s.ScheduleID,
    s.DepartureTime,
    s.ArrivalTime,
    s.off_day,
    r.RouteID,
    r.SourceStation,
    r.DestinationStation,
    r.Distance,
    r.estimated_duration_minutes
FROM trains t
JOIN schedules s ON t.TrainNumber = s.TrainNumber
JOIN routes r ON s.RouteID = r.RouteID
WHERE t.is_active = TRUE AND s.is_active = TRUE;


-- View: Seat booking overview
CREATE VIEW v_seat_booking_status AS
SELECT
    s.seat_id,
    s.seat_number,
    s.seat_type,
    c.coach_number,
    c.class_code,
    c.class_name,
    t.TrainName,
    t.TrainNumber,
    sa.journey_date,
    sa.is_booked,
    CASE
        WHEN sa.is_booked = TRUE THEN 'Booked'
        WHEN sa.locked_until > NOW() THEN 'Locked'
        ELSE 'Available'
    END AS availability_status
FROM seats s
JOIN coaches c ON s.coach_id = c.coach_id
JOIN trains t ON c.TrainNumber = t.TrainNumber
LEFT JOIN seat_availability sa ON s.seat_id = sa.seat_id;


-- View: Station info with routes
CREATE VIEW v_station_routes AS
SELECT
    st.station_id,
    st.station_code,
    st.station_name,
    st.station_name_bn,
    st.division,
    st.city,
    st.is_junction,
    rs.RouteID,
    rs.stop_sequence,
    rs.distance_from_start_km,
    r.SourceStation,
    r.DestinationStation
FROM stations st
JOIN route_stops rs ON st.station_id = rs.station_id
JOIN routes r ON rs.RouteID = r.RouteID;


-- ============================================
-- STORED PROCEDURES FOR BUSINESS LOGIC
-- ============================================

DELIMITER //

-- Procedure: Calculate fare for a journey
CREATE PROCEDURE calculate_journey_fare(
    IN p_route_id INT,
    IN p_class_type VARCHAR(50),
    OUT p_fare DECIMAL(10,2)
)
BEGIN
    SELECT TotalAmount INTO p_fare
    FROM fares
    WHERE RouteID = p_route_id
      AND ClassType = p_class_type
      AND (effective_from IS NULL OR CURDATE() >= effective_from)
      AND (effective_until IS NULL OR CURDATE() <= effective_until)
    LIMIT 1;

    IF p_fare IS NULL THEN
        SET p_fare = 0.00;
    END IF;
END//

-- Procedure: Check seat availability
CREATE PROCEDURE check_seat_availability(
    IN p_seat_id INT,
    IN p_schedule_id INT,
    IN p_journey_date DATE,
    OUT p_is_available BOOLEAN
)
BEGIN
    DECLARE v_is_booked BOOLEAN DEFAULT FALSE;
    DECLARE v_locked_until TIMESTAMP;

    SELECT is_booked, locked_until
    INTO v_is_booked, v_locked_until
    FROM seat_availability
    WHERE seat_id = p_seat_id
      AND ScheduleID = p_schedule_id
      AND journey_date = p_journey_date;

    IF v_is_booked = TRUE THEN
        SET p_is_available = FALSE;
    ELSEIF v_locked_until IS NOT NULL AND v_locked_until > NOW() THEN
        SET p_is_available = FALSE;
    ELSE
        SET p_is_available = TRUE;
    END IF;
END//

-- Procedure: Lock seat for booking (temporary hold)
CREATE PROCEDURE lock_seat(
    IN p_seat_id INT,
    IN p_schedule_id INT,
    IN p_journey_date DATE,
    IN p_lock_minutes INT
)
BEGIN
    INSERT INTO seat_availability (seat_id, ScheduleID, journey_date, is_booked, locked_until)
    VALUES (p_seat_id, p_schedule_id, p_journey_date, FALSE, DATE_ADD(NOW(), INTERVAL p_lock_minutes MINUTE))
    ON DUPLICATE KEY UPDATE
        locked_until = DATE_ADD(NOW(), INTERVAL p_lock_minutes MINUTE);
END//

-- Function: Generate PNR number
CREATE FUNCTION generate_pnr() RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    RETURN CONCAT('PNR', LPAD(FLOOR(RAND() * 9999999999), 10, '0'));
END//

-- Function: Generate ticket number
CREATE FUNCTION generate_ticket_number() RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    RETURN CONCAT('TKT', DATE_FORMAT(NOW(), '%Y%m%d'), LPAD(FLOOR(RAND() * 999999), 6, '0'));
END//

DELIMITER ;


-- ============================================
-- ADDITIONAL INDEXES FOR PERFORMANCE
-- ============================================
CREATE INDEX idx_ticket_journey ON bookings(BookingDate, SeatStatus, ScheduleID);
CREATE INDEX idx_schedule_active ON schedules(is_active, TrainNumber, RouteID);
CREATE INDEX idx_fare_lookup ON fares(RouteID, ClassType, effective_from, effective_until);


-- ============================================
-- DATABASE SETUP COMPLETE
-- ============================================
SELECT '✅ Railway DB Merged Successfully!' AS Status;
SELECT COUNT(*) AS Total_Stations FROM stations;
SELECT COUNT(*) AS Total_Trains FROM trains;
SELECT COUNT(*) AS Total_Routes FROM routes;
SELECT COUNT(*) AS Total_Schedules FROM schedules;
SELECT COUNT(*) AS Total_Coaches FROM coaches;
SELECT COUNT(*) AS Total_Seats FROM seats;
SELECT COUNT(*) AS Total_Fares FROM fares;
