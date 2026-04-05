# 🚂 Railway Reservation Management System (RRMS)

A full-featured **Railway Reservation Management System** built with **Flask** and **MySQL/MariaDB**, modeled after the **Bangladesh Railway** network. The system provides a complete workflow for user authentication, train schedule browsing, ticket booking, mock payment processing, PDF ticket generation, cancellation with automated refunds, and dedicated dashboards for both passengers and administrators.

> **🎓 DBMS Course Project** — Department of Computer Science and Engineering | Spring 2026

---

## 📋 Table of Contents

- [Features](#-features)
- [Technology Stack](#-technology-stack)
- [Project Structure](#-project-structure)
- [Database Schema](#-database-schema)
- [Prerequisites](#-prerequisites)
- [Installation & Setup](#-installation--setup)
- [Running the Application](#-running-the-application)
- [Application Routes](#-application-routes)
- [API Endpoints](#-api-endpoints)
- [Authentication System](#-authentication-system)
- [Security Features](#-security-features)
- [Performance Optimizations](#-performance-optimizations)
- [Mock Payment Gateway](#-mock-payment-gateway)
- [Business Logic](#-business-logic)
- [Class Types](#-class-types-bangladesh-railway)
- [Seed Data](#-seed-data)
- [Team Members](#-team-members)
- [Screenshots](#-screenshots)
- [Configuration](#-configuration)
- [Contributing](#-contributing)
- [License](#-license)

---

## ✨ Features

### 🔐 Authentication & Authorization
- **User Registration** — Secure sign-up with password hashing (`werkzeug.security`), strength indicator, and duplicate validation
- **User Login/Logout** — Session-based authentication with `flask.session`, permanent session support (8h TTL)
- **Role-Based Access Control** — `Admin` and `Passenger` roles with route-level protection
- **Auto-Login on Registration** — Seamless onboarding experience after sign-up
- **Legacy Password Upgrade** — Automatically hashes plaintext passwords on first login
- **Guest Booking** — Allows ticket booking without creating an account

### 🎫 Ticket Management
- **Browse Train Schedules** — View all available trains with real-time seat availability, departure/arrival times, routes, and fares
- **Book Tickets** — Multi-step booking flow with passenger details, payment method selection, and automatic PNR generation
- **Mock Payment Processing** — Simulated payment gateway supporting Credit/Debit Card (Luhn validation), bKash, Nagad, and Rocket
- **PDF Ticket Download** — Generate professional PDF e-tickets using ReportLab with Bangladesh Railway branding
- **Cancel Tickets** — One-click cancellation with 90% automated refund processing
- **PNR Tracking** — Each ticket receives a unique PNR number for identification

### 📊 Dashboards
- **Passenger Dashboard** — KPI cards (total bookings, confirmed, cancelled, total spent), recent bookings table, quick actions
- **Admin Dashboard** — Revenue analytics, booking statistics, active trains count, user count, payment method breakdown, recent bookings overview

### 🏢 Station & Train Management
- **Station Directory** — All stations grouped by division with station codes, Bengali names, city, and junction status
- **Coach Details** — Detailed coach composition per train including class type, seat count, and AC availability

### 🌍 Bilingual Support
- **Bengali (বাংলা) + English** — Full UTF-8/utf8mb4 support across all pages, station names, train names, and route labels

---

## 🛠 Technology Stack

| Layer              | Technology                                                  |
|--------------------|-------------------------------------------------------------|
| **Backend**        | Python 3.8+, Flask 3.x                                     |
| **Database**       | MySQL 8.x / MariaDB 10.4+                                  |
| **DB Connector**   | `mysql-connector-python`                                    |
| **CSRF Protection**| `Flask-WTF` (CSRFProtect)                                   |
| **PDF Generation** | `ReportLab`                                                 |
| **Auth**           | `werkzeug.security` (password hashing: PBKDF2/Scrypt)       |
| **Config**         | `python-dotenv` (environment variables)                     |
| **Frontend**       | HTML5, CSS3, JavaScript, Jinja2 Templates                   |
| **Design System**  | Custom CSS with CSS Custom Properties (design tokens)       |
| **Icons**          | Font Awesome 6.4.0                                          |
| **Typography**     | Google Fonts — Inter (300–800 weight)                       |
| **Server**         | Flask Development Server (Werkzeug)                         |
| **Charset**        | UTF-8 / utf8mb4 (Bengali language support)                  |

---

## 📁 Project Structure

```
RRMS/
├── app.py                              # Main Flask application (routes, auth, API, PDF)
├── requirements.txt                    # Python dependencies (5 packages)
├── readme.md                           # This file
│
├── database/
│   └── railway_db.sql                  # Complete database schema + seed data
│
├── static/
│   └── css/
│       └── style.css                   # Shared design system (CSS custom properties)
│
├── templates/
│   ├── base.html                       # 🆕 Base template (navbar, footer, flash messages)
│   ├── index.html                      # Home page — train schedules & availability
│   ├── login.html                      # 🆕 User login form
│   ├── register.html                   # User registration form
│   ├── book.html                       # Ticket booking form with payment selection
│   ├── payment.html                    # 🆕 Mock payment gateway (Card/bKash/Nagad/Rocket)
│   ├── ticket_success.html             # 🆕 Booking confirmation & PDF download
│   ├── bookings.html                   # View user's bookings with actions
│   ├── dashboard.html                  # 🆕 Passenger dashboard with KPIs
│   ├── admin_dashboard.html            # 🆕 Admin dashboard with analytics
│   ├── stations.html                   # Station listing by division
│   ├── coaches.html                    # Coach & seat details per train
│   └── about.html                      # About Us — team & tech stack
│
└── .venv/                              # Python virtual environment (auto-generated)
```

### Template Inheritance Hierarchy

```
base.html (shared layout)
├── index.html          (hero section + train cards)
├── login.html          (auth card)
├── register.html       (auth card + password strength)
├── book.html           (journey details + booking form)
├── payment.html        (payment gateway + processing animation)
├── ticket_success.html (confirmation + PDF download)
├── bookings.html       (ticket cards grid)
├── dashboard.html      (KPIs + recent bookings table)
├── admin_dashboard.html(admin KPIs + analytics)
├── stations.html       (division-grouped station cards)
├── coaches.html        (train header + coach grid)
└── about.html          (team cards + tech stack)
```

---

## 🗄 Database Schema

The system uses a normalized relational database with **16 tables**, **3 views**, and **7 stored procedures/functions**.

### Entity-Relationship Overview

```
users ──────┐
            ├──→ passengers ──→ bookings ──→ payments
            │                      │
            │                      ├──→ cancellations ──→ refunds
            │                      │
            │                      └──→ seat_availability
            │
            └──→ audit_logs
            
trains ──→ coaches ──→ seats
  │
  └──→ schedules ──→ routes ──→ fares
                        │
                        └──→ route_stops ──→ stations
```

### Tables

| #  | Table                | Description                                         |
|----|----------------------|-----------------------------------------------------|
| 1  | `users`              | User accounts (passengers, admins) with hashed passwords |
| 2  | `passengers`         | Passenger profiles linked to users                  |
| 3  | `stations`           | Railway stations with codes and Bengali names        |
| 4  | `trains`             | Train information (name, type, capacity, speed)      |
| 5  | `routes`             | Source-destination route pairs with distance          |
| 6  | `route_stops`        | Intermediate stops along each route                  |
| 7  | `schedules`          | Train departure/arrival times and off-days           |
| 8  | `coaches`            | Coach composition per train (class, AC, seats)       |
| 9  | `seats`              | Individual seat records (type: window/aisle/berth)   |
| 10 | `fares`              | Ticket pricing by route and class type               |
| 11 | `bookings`           | Ticket bookings with PNR and seat assignment         |
| 12 | `seat_availability`  | Real-time seat availability per schedule/date        |
| 13 | `payments`           | Payment records (amount, method, status, transaction_id) |
| 14 | `cancellations`      | Cancellation records with reason tracking            |
| 15 | `refunds`            | Refund records linked to cancellations               |
| 16 | `audit_logs`         | System-wide change tracking and audit trail          |

### Views

| View                     | Purpose                                               |
|--------------------------|-------------------------------------------------------|
| `v_train_schedules`      | Active trains with route & schedule info               |
| `v_seat_booking_status`  | Seat-level availability status (Booked/Locked/Available)|
| `v_station_routes`       | Station details with associated routes & stop sequences|

### Stored Procedures & Functions

| Name                          | Type       | Purpose                                     |
|-------------------------------|------------|---------------------------------------------|
| `generate_ac_berth_seats()`   | Procedure  | Auto-generate berth-style seats for a coach  |
| `generate_ac_seat_coach()`    | Procedure  | Auto-generate AC seat layout for a coach     |
| `generate_snigdha_coach()`    | Procedure  | Auto-generate Snigdha class seats            |
| `generate_s_chair_coach()`    | Procedure  | Auto-generate Shovan Chair seats             |
| `generate_shovan_coach()`     | Procedure  | Auto-generate Shovan class seats             |
| `calculate_journey_fare()`    | Procedure  | Calculate fare for a route + class combo     |
| `check_seat_availability()`   | Procedure  | Check if a specific seat is available        |
| `lock_seat()`                 | Procedure  | Temporarily lock a seat during booking       |
| `generate_pnr()`             | Function   | Generate a random PNR number                 |
| `generate_ticket_number()`   | Function   | Generate a formatted ticket number           |

---

## 📌 Prerequisites

Before running the application, make sure you have:

- **Python 3.8+** installed → [Download Python](https://www.python.org/downloads/)
- **MySQL 8.x** or **MariaDB 10.4+** installed and running → [Download MySQL](https://dev.mysql.com/downloads/) or [XAMPP](https://www.apachefriends.org/)
- **pip** (Python package manager, comes with Python)

---

## 🚀 Installation & Setup

### 1. Clone or Navigate to the Project

```bash
cd RRMS
```

### 2. Create a Virtual Environment

```bash
python -m venv .venv
```

Activate it:

- **Windows (PowerShell)**:
  ```powershell
  .\.venv\Scripts\Activate
  ```
- **Windows (CMD)**:
  ```cmd
  .venv\Scripts\activate.bat
  ```
- **Linux / macOS**:
  ```bash
  source .venv/bin/activate
  ```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

This installs:

| Package                  | Purpose                              |
|--------------------------|--------------------------------------|
| `flask`                  | Web framework                        |
| `mysql-connector-python` | MySQL database driver                |
| `flask-wtf`              | CSRF protection for all forms        |
| `reportlab`              | PDF ticket generation                |
| `python-dotenv`          | Environment variable configuration   |

### 4. Set Up the Database

1. **Start your MySQL/MariaDB server** (or start XAMPP and enable MySQL).

2. **Import the database schema** using one of these methods:

   **Option A — Using MySQL CLI:**
   ```bash
   mysql -u root -p < database/railway_db.sql
   ```

   **Option B — Using phpMyAdmin:**
   - Open phpMyAdmin (`http://localhost/phpmyadmin`)
   - Click **Import**
   - Select `database/railway_db.sql`
   - Click **Go**

   **Option C — Using MySQL Workbench:**
   - Open MySQL Workbench
   - Go to **File → Open SQL Script**
   - Select `database/railway_db.sql`
   - Click the ⚡ Execute button

   > This will create the `railway_db` database, all 16 tables, views, stored procedures, and populate seed data automatically.

### 5. Configure Database Credentials

You can configure credentials in two ways:

**Option A — Environment Variables (Recommended):**
```bash
# Windows PowerShell
$env:DB_HOST = "localhost"
$env:DB_USER = "root"
$env:DB_PASSWORD = "your_password"
$env:DB_NAME = "railway_db"
$env:SECRET_KEY = "your_secret_key_here"
```

```bash
# Linux / macOS
export DB_HOST=localhost
export DB_USER=root
export DB_PASSWORD=your_password
export DB_NAME=railway_db
export SECRET_KEY=your_secret_key_here
```

**Option B — Direct Edit in `app.py`:**
```python
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',              # ← Enter your MySQL password here
    'database': 'railway_db',
}
```

> **Note:** If you're using XAMPP with default settings, the password is typically empty (`''`).

---

## ▶ Running the Application

```bash
python app.py
```

The server will start at:

```
http://127.0.0.1:5000
```

Open this URL in your web browser to access the application.

> The application runs in **debug mode** by default on **port 5000**.

---

## 🌐 Application Routes

### Public Routes (No Login Required)

| Route                        | Method     | Description                                            |
|------------------------------|------------|--------------------------------------------------------|
| `/`                          | GET        | Home page — train schedules with search & filter       |
| `/login`                     | GET, POST  | User login page                                        |
| `/register`                  | GET, POST  | User registration with password hashing                |
| `/logout`                    | GET        | Logout and clear session                                |
| `/about`                     | GET        | About Us — team members & tech stack                    |
| `/stations`                  | GET        | View all railway stations by division                   |
| `/coaches/<train_number>`    | GET        | View coach composition for a specific train             |
| `/book/<schedule_id>`        | GET, POST  | Book a ticket (accessible to guests & logged-in users)  |

### Protected Routes (Login Required)

| Route                              | Method     | Role      | Description                                  |
|------------------------------------|------------|-----------|----------------------------------------------|
| `/dashboard`                       | GET        | Passenger | User dashboard with booking KPIs             |
| `/bookings`                        | GET        | Passenger | View user's bookings (admin sees all)        |
| `/cancel/<ticket_id>`              | GET        | Passenger | Cancel booking and process 90% refund        |
| `/payment/<ticket_id>`             | GET, POST  | Any       | Mock payment gateway                         |
| `/ticket/success/<ticket_id>`      | GET        | Any       | Booking confirmation page                    |
| `/ticket/<ticket_id>/download`     | GET        | Any       | Download PDF e-ticket                        |

### Admin-Only Routes

| Route                        | Method     | Description                                            |
|------------------------------|------------|--------------------------------------------------------|
| `/admin`                     | GET        | Admin dashboard with revenue & analytics               |

---

## 🔌 API Endpoints (JSON)

All API endpoints return JSON and include appropriate `Cache-Control` headers for browser caching.

| Endpoint                        | Method | Cache TTL  | Description                              |
|---------------------------------|--------|------------|------------------------------------------|
| `/api/stations`                 | GET    | 1 hour     | Get all stations as JSON                 |
| `/api/fares/<route_id>`         | GET    | 30 minutes | Get fare classes for a route             |
| `/api/coaches/<train_number>`   | GET    | 30 minutes | Get coach details for a train            |
| `/api/schedules`                | GET    | 5 minutes  | Get all active schedules                 |

### Example API Response — `/api/fares/1`

```json
{
  "fares": [
    {
      "ClassType": "AC Berth",
      "TotalAmount": 1398.0,
      "SourceStation": "ঢাকা",
      "DestinationStation": "চট্টগ্রাম",
      "Distance": 320.0
    },
    {
      "ClassType": "Shovan",
      "TotalAmount": 285.0,
      "SourceStation": "ঢাকা",
      "DestinationStation": "চট্টগ্রাম",
      "Distance": 320.0
    }
  ],
  "route_id": 1
}
```

---

## 🔐 Authentication System

### Registration Flow
1. User fills in full name, email (optional), username, and password
2. Password is validated (minimum 6 characters) with client-side strength indicator
3. Password is hashed using `werkzeug.security.generate_password_hash` (PBKDF2)
4. Duplicate username/email checks are performed
5. User is auto-logged-in after successful registration

### Login Flow
1. User enters username and password
2. System checks against hashed password in database
3. If a legacy plaintext password matches, it is automatically upgraded to a hash
4. Session is created with `user_id`, `username`, `fullname`, and `role`
5. User is redirected to dashboard (or original requested page via `next` parameter)

### Session Management
- Sessions use Flask's built-in secure cookie sessions
- Permanent session lifetime: **8 hours**
- Session data: `user_id`, `username`, `fullname`, `role`
- Context processor injects `current_user` into all templates

### Demo Accounts (Pre-seeded)

| Username      | Password    | Role      |
|---------------|-------------|-----------|
| `admin`       | `admin123`  | Admin     |
| `guest_user`  | `guest`     | Passenger |

---

## 🛡 Security Features

| Feature                    | Implementation                                           |
|----------------------------|----------------------------------------------------------|
| **CSRF Protection**        | Flask-WTF `CSRFProtect` — all POST forms include `csrf_token()` |
| **Password Hashing**       | `werkzeug.security` (PBKDF2/Scrypt)                      |
| **Route Protection**       | `@login_required` and `@admin_required` decorators        |
| **SQL Injection Prevention** | Parameterized queries via `mysql-connector-python`       |
| **Session Security**       | Server-side sessions with signed cookies                  |
| **Input Validation**       | Server-side validation on all form submissions            |

---

## ⚡ Performance Optimizations

### Server-Side (HTTP Caching)

| Endpoint           | Cache-Control Header                  | Purpose                           |
|--------------------|---------------------------------------|-----------------------------------|
| `/api/stations`    | `public, max-age=3600` (1 hour)       | Stations rarely change            |
| `/api/fares/*`     | `public, max-age=1800` (30 min)       | Fares update infrequently         |
| `/api/coaches/*`   | `public, max-age=1800` (30 min)       | Coach data is relatively static   |
| `/api/schedules`   | `public, max-age=300` (5 min)         | Schedules may change more often   |

All API responses include `ETag` headers for conditional requests.

### Client-Side (Session Storage)

| Data           | Storage          | Strategy                              |
|----------------|------------------|---------------------------------------|
| Station list   | `sessionStorage` | Fetch once per browser session        |
| Fare data      | `sessionStorage` | Fetch per route on demand             |
| Schedule data  | `sessionStorage` | Timestamp check before fetch (5 min)  |

### Database

- **Connection Pooling** — `pool_size=5` for efficient connection reuse
- **Buffered Cursors** — Prevents hanging result sets
- **Optimized Queries** — JOINs and GROUP BY with indexed columns
- **Database Views** — Pre-built views for common complex queries

---

## 💳 Mock Payment Gateway

The system includes a fully functional mock payment gateway that simulates real-world payment processing.

### Supported Payment Methods

| Method        | Validation                                        | Test Values                        |
|---------------|---------------------------------------------------|------------------------------------|
| Credit Card   | Luhn algorithm (card number) + expiry + CVV       | `4111 1111 1111 1111`, `4242 4242 4242 4242` |
| Debit Card    | Luhn algorithm (card number) + expiry + CVV       | Same as above                      |
| bKash         | 11-digit BD mobile number starting with `01x` + PIN | `01712345678`, PIN: `1234`        |
| Nagad         | Same as bKash                                     | Same as above                      |
| Rocket        | Same as bKash                                     | Same as above                      |
| Cash          | No validation (instant confirmation)              | —                                  |

### Payment Flow
1. User selects a payment method during booking
2. Booking is created with payment status `Pending` (card/mobile) or `Completed` (cash)
3. User is redirected to the payment page with a processing animation
4. After validation, payment status is updated to `Completed`
5. User sees the success page with PDF download option

---

## 💼 Business Logic

### Ticket Booking Flow
1. User selects a schedule from the home page
2. Fills in passenger details (name, DOB, gender, passport/NID)
3. Selects a payment method (Credit Card, Debit Card, bKash, Nagad, Rocket, or Cash)
4. System creates:
   - A **passenger** record (linked to the logged-in user or guest)
   - A **booking** record with `Confirmed` status and unique PNR
   - A **payment** record with mock transaction ID
5. If payment method is card/mobile → redirected to mock payment page
6. If cash → directly to success page
7. User can download a PDF e-ticket

### Cancellation & Refund Policy
1. User clicks "Cancel" on a confirmed booking
2. System verifies the ticket exists and is not already cancelled
3. A **cancellation** record is created with reason "User Request"
4. A **refund** of **90%** of the original payment amount is generated
5. Booking status is updated to `Cancelled`

### Seat Availability
- Available seats = `TotalSeats` (from trains table) − Count of `Confirmed` bookings
- Color-coded display: 🟢 Available (>20) / 🟡 Limited (<20) / 🔴 Sold Out (0)
- Seat locking support for preventing double-booking during checkout

---

## 🪑 Class Types (Bangladesh Railway)

| Class Code    | Class Name     | AC  | Seat Style        |
|---------------|----------------|-----|-------------------|
| `AC_B`        | AC Berth       | ✅  | Lower/Upper Berth |
| `AC_S`        | AC Seat        | ✅  | Window/Aisle      |
| `SNIGDHA`     | Snigdha        | ✅  | Window/Aisle      |
| `S_CHAIR`     | Shovan Chair   | ❌  | Window/Aisle      |
| `SHOVAN`      | Shovan         | ❌  | Window/Aisle      |
| `SHULOV`      | Shulov         | ❌  | Window/Aisle      |
| `F_BERTH`     | First Berth    | ✅  | Berth             |
| `F_SEAT`      | First Seat     | ✅  | Seat              |

---

## 🗂 Seed Data

The database SQL file comes pre-loaded with realistic Bangladesh Railway data:

| Data                 | Count | Examples                                                |
|----------------------|-------|---------------------------------------------------------|
| **Users**            | 2     | Guest User, System Admin                                |
| **Stations**         | 20    | Kamalapur, Chattogram, Sylhet, Rajshahi, Khulna, etc.   |
| **Trains**           | 21    | Subarna Express, Sonar Bangla, Turna Express, etc.      |
| **Routes**           | 16    | ঢাকা↔চট্টগ্রাম, ঢাকা↔রাজশাহী, ঢাকা↔সিলেট, etc.       |
| **Schedules**        | 20    | Multiple daily departures with off-day assignments       |
| **Coaches**          | 24    | Detailed compositions for 4 trains                       |
| **Seats**            | 1000+ | Auto-generated via stored procedures                     |
| **Fares**            | 40    | Realistic pricing for all routes and class types         |

---

## 👥 Team Members

| Name                          | Role                                    | Key Contributions                                |
|-------------------------------|-----------------------------------------|--------------------------------------------------|
| **Md Mahmudur Rahman**        | Team Leader & Database Architect         | ER Diagram, Schema Design, Normalization (3NF/BCNF), Flask Backend, System Architecture |
| **Yah-Yea Bin Jakaria**       | SQL Query & Optimization Specialist      | Complex JOINs, Aggregation, Subqueries, Query Optimization, Index Tuning |
| **Mottake**                   | Transaction & Constraint Specialist      | ACID Transactions, PK/FK Constraints, Triggers   |
| **Mosammat Samiea Jahan Eva** | Frontend & UI Developer                  | HTML/CSS/JS Design, Responsive Layout, Stored Procedures |
| **Kanita Hossen Prioty**      | Data Security & Documentation Officer    | User Management, Backup Strategies, Testing, Documentation |

---

## 📸 Screenshots

### Home Page
> Train schedule listing with search filters, class filters, and real-time seat availability. Hero section with statistics.

### Booking Page
> Multi-step booking form with journey details, passenger information, and payment method selection (Credit Card, bKash, Nagad, Rocket, Cash).

### Payment Gateway
> Mock payment page with card number validation (Luhn algorithm), mobile wallet support, and animated processing state.

### User Dashboard
> KPI cards showing total bookings, confirmed/cancelled counts, and total spent. Recent bookings table with download/cancel actions.

### Admin Dashboard
> Revenue analytics, booking statistics, active trains, registered users, payment method breakdown, and recent bookings overview.

### PDF E-Ticket
> Downloadable PDF ticket with Bangladesh Railway branding, PNR number, journey details, passenger information, and fare breakdown.

---

## ⚙ Configuration

### Environment Variables

| Variable        | Default                        | Description                       |
|-----------------|--------------------------------|-----------------------------------|
| `DB_HOST`       | `localhost`                    | MySQL server hostname             |
| `DB_USER`       | `root`                         | MySQL username                    |
| `DB_PASSWORD`   | `''` (empty)                   | MySQL password                    |
| `DB_NAME`       | `railway_db`                   | Database name                     |
| `SECRET_KEY`    | `railway_secret_key_prod_2026` | Flask session encryption key      |

### Application Config

| Setting                          | Value               | Location            |
|----------------------------------|---------------------|---------------------|
| Flask Port                       | `5000`              | `app.py` (bottom)   |
| Debug Mode                       | `True`              | `app.py` (bottom)   |
| Session Lifetime                 | `8 hours`           | `app.py` (config)   |
| CSRF Token Timeout               | `3600` seconds      | `app.py` (config)   |
| Connection Pool Size             | `5`                 | `app.py` (db_config)|
| Refund Percentage                | `90%`               | Cancel route logic   |

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Open a Pull Request

---

## 📄 License

This project is developed for educational purposes as part of a **Database Management System (DBMS)** course project.

---

## 🏗 Architecture Notes

### Design Patterns Used
- **Template Inheritance** — `base.html` provides shared layout (navbar, footer, flash messages); all pages extend it
- **Decorator Pattern** — `@login_required` and `@admin_required` for route protection
- **Context Processor** — Injects `current_user` object into every template automatically
- **Connection Pooling** — MySQL connection pool for efficient database resource management

### CSS Design System
The project uses a centralized CSS design system (`static/css/style.css`) with:
- **CSS Custom Properties** — 30+ design tokens for colors, spacing, shadows, and transitions
- **Component Library** — Reusable card, button, form, alert, badge, and table styles
- **Responsive Breakpoints** — Mobile-first at 480px, 768px, and 992px
- **Consistent Theming** — Primary green (`#1a4d3e`), accent orange (`#f5a623`), dark header/footer

---

**Railway Reservation Management System** — Built with ❤️ using Flask & MySQL

> **⚠ Note:** This application is designed for educational and demonstration purposes. For production deployment, consider adding HTTPS, rate limiting, email verification, proper logging, and environment-based configuration.
