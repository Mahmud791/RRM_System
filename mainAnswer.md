# Bangladesh Railway Reservation System - Complete Technical Documentation

## 1. What problem does your railway reservation system solve?

The system solves the problem of manual railway ticket booking in Bangladesh. Previously, passengers had to physically visit railway stations to buy tickets, leading to:
- Long queues and waiting times
- Limited availability of tickets
- No real-time seat availability information
- Manual errors in ticket issuing
- Limited payment options
- No easy way to track or cancel bookings

Our system provides an online platform where passengers can:
- Search available trains in real-time
- View seat availability instantly
- Book tickets online from anywhere
- Make digital payments
- Download e-tickets
- Cancel and get refunds automatically

---

## 2. Who are the main users (admin, passengers, staff)?

### Main User Types:

1. **Passengers (Role: "Passenger")**
   - Can search trains
   - View schedules and routes
   - Book tickets
   - Make payments
   - Download tickets
   - Cancel bookings
   - View booking history

2. **Admin (Role: "Admin")**
   - View dashboard with analytics
   - Manage trains (add/edit/toggle status)
   - Manage routes
   - Manage schedules
   - Search bookings/passengers
   - View cancellations and refunds
   - View reports (popular routes, train performance)

3. **Guest Users**
   - Can browse and search trains without login
   - Can book tickets (creates passenger record automatically)
   - Must complete payment to confirm booking

---

## 3. What are the core features of your system?

### Passenger Features:
- User registration and login
- Train search by route
- Schedule viewing with departure/arrival times
- Seat availability display
- Ticket booking with passenger details
- Multiple payment methods (Credit Card, Debit Card, bKash, Nagad, Rocket, Cash)
- E-ticket generation (PDF download)
- Booking history
- Ticket cancellation with 90% refund

### Admin Features:
- Dashboard with key metrics (revenue, bookings, users)
- Analytics charts (revenue trend, payment methods)
- Train management (CRUD operations)
- Route management
- Schedule management
- Search functionality
- Cancellations/refunds view
- Reports (popular routes, train performance, user registration)

### System Features:
- Dynamic PNR generation
- Transaction ID for payments
- Payment status tracking
- Email/phone database
- Password hashing (pbkdf2/scrypt)

---

## 4. Workflow Explanation (search → select → book → pay → ticket)

### Complete Booking Workflow:

```
1. SEARCH
   ↓
   User visits homepage (/)
   ↓
   System displays all available schedules
   ↓
   User can view trains, routes, times, prices

2. SELECT
   ↓
   User clicks "Book" on desired schedule
   ↓
   User selects travel class
   ↓
   Redirected to booking form (/book/<schedule_id>)

3. BOOK
   ↓
   User fills: Full Name, DOB, Gender, Passport/NID
   ↓
   User selects payment method
   ↓
   User submits form
   ↓
   System creates: Passenger record, Booking record (status: Confirmed/Pending)
   ↓
   System generates PNR number
   ↓
   IF payment = Cash → Ticket confirmed immediately
   IF payment = Card/Mobile → Redirect to payment page

4. PAY
   ↓
   User enters payment details
   ↓
   For Card: Validate card number (Luhn algorithm)
   ↓
   For Mobile: Validate mobile number format
   ↓
   System updates payment status to "Completed"
   ↓
   Redirect to success page

5. TICKET
   ↓
   System displays ticket with all details
   ↓
   User can download PDF ticket
   ↓
   User receives PNR for reference
```

---

## 5. Architecture Used

### MVC Pattern (Model-View-Controller)

```
┌─────────────────────────────────────────────────────────┐
│                    FLASK APP                          │
├─────────────────────────────────────────────────────────┤
│  ROUTES (Controller)                                 │
│  - /, /login, /register, /dashboard                 │
│  - /book/<id>, /payment/<id>, /cancel/<id>         │
│  - /admin, /admin/trains, /admin/routes             │
├─────────────────────────────────────────────────────────┤
│  MODELS (via db_wrapper)                            │
│  - get_db_connection()                             │
│  - Direct SQL queries                             │
├─────────────────────────────────────────────────────────┤
│  TEMPLATES (View)                                  │
│  - Jinja2 HTML templates                        │
│  - base.html, dashboard.html, index.html            │
└─────────────────────────────────────────────────────────┘
```

### Client-Server Architecture:
- **Client**: Browser with HTML/CSS/JavaScript
- **Server**: Flask Python application
- **Database**: Turso (SQLite-compatible cloud DB)

---

## 6. How does your frontend communicate with the backend?

### Communication Methods:

1. **HTML Form Submissions**
   ```html
   <form method="POST" action="/login">
   ```
   - Traditional form posts
   - Data sent as form-encoded
   - Server processes and returns new page

2. **URL Routing**
   ```python
   @app.route('/book/<int:schedule_id>')
   ```
   - RESTful URLs with parameters
   - GET for viewing, POST for actions

3. **Session Management**
   ```python
   session['user_id'] = user['UserID']
   ```
   - Flask sessions store user state
   - Cookie-based

4. **No AJAX/Fetch Calls** (current implementation)
   - All requests are page reloads
   - Simpler but slower

### Data Flow:
```
User Browser ←→ HTTP Request ←→ Flask Routes ←→ SQL Queries ←→ Turso DB
                 ←← Response ←← Render Template ←←
```

---

## 7. System Diagram

```
┌─────────────────────────────────────────────────────────────────┐
│                        USER INTERFACE                           │
│  ┌─────────┐ ┌──────────┐ ┌─────────┐ ┌─────────┐           │
│  │  Home   │ │ Dashboard│ │  Book   │ │ Admin   │           │
│  │  Page   │ │  Page    │ │  Page   │ │  Panel  │           │
│  └────┬────┘ └────┬────┘ └────┬────┘ └────┬────┘           │
└───────┼───────────┼───────────┼───────────┼──────────────────────┘
        │           │           │           │
        ▼           ▼           ▼           ▼
┌───────────────��─────────────────────────────────────────────────┐
│              FLASK APPLICATION SERVER                    │
│  ┌─────────────────────────────────────────────┐  │
│  │           ROUTES/CONTROLLERS                 │  │
│  │  - Authentication (login, register)        │  │
│  │  - Booking (book, payment, cancel)       │  │
│  │  - Admin (manage trains, routes)        │  │
│  │  - API (stations, fares, schedules)     │  │
│  └─────────────────────────────────────────────┘  │
│                         │                         │
│  ┌─────────────────────────────────────────┐   │
│  │        BUSINESS LOGIC                     │   │
│  │  - Password hashing                  │   │
│  │  - Session management              │   │
│  │  - Input validation               │   │
│  │  - PNR generation                │   │
│  │  - Refund calculation (90%)      │   │
│  └─────────────────────────────────────────┘   │
└────────────────────────┬────────────────────────────────┘
                         │
                         ▼
┌─────────────────────────────────────────────────────────────────┐
│                   DATABASE (TURSO)                      │
│  ┌──────────┐ ┌─────────┐ ┌──────────┐ ┌─────────┐   │
│  │  users  │ │ trains  │ │ schedules│ │ bookings│   │
│  ├──────────┤ ├─────────┤ ├──────────┤ ├─────────┤   │
│  │ passengers│ │ routes │ │  fares   │ │ payments│   │
│  ├──────────┤ ├─────────┤ │         │ │         │   │
│  │ stations │ │ coaches │ │         │ │ refunds │   │
│  └──────────┘ └─────────┘ └──────────┘ └─────────┘   │
└────────────────────────────────────────────────────┘
```

---

## 8. What database did you use?

### Database: Turso (libSQL)

- **Type**: SQLite-compatible distributed database
- **Provider**: Turso (cloud-hosted)
- **Connection**: libSQL client library

### Configuration:
```python
# Environment variables
TURSO_DATABASE_URL=libsql://database-xxx.turso.io
TURSO_AUTH_TOKEN=eyJhbGciOiJ...
```

### Why Turso?
- Free tier available
- SQLite compatible (easy setup)
- Vercel deployment support
- Serverless-friendly

### Note: Original design was for MySQL but switched to Turso
- The db_wrapper converts MySQL syntax (%s) to SQLite (?)

---

## 9. Main Tables

### List of Tables:

1. **users**
   ```
   - UserID (PRIMARY KEY)
   - Username (UNIQUE)
   - PasswordHash
   - Email (UNIQUE)
   - Phone
   - FullName
   - Role (Passenger/Admin)
   - is_active (BOOLEAN)
   - RegisterDate
   ```

2. **passengers**
   ```
   - PassengerID (PRIMARY KEY)
   - UserID (FOREIGN KEY → users)
   - PassportNumber
   - FullName
   - DateOfBirth
   - Gender
   - Nationality
   ```

3. **trains**
   ```
   - TrainNumber (PRIMARY KEY)
   - TrainName
   - TotalSeats
   - is_active (BOOLEAN)
   ```

4. **routes**
   ```
   - RouteID (PRIMARY KEY)
   - SourceStation
   - DestinationStation
   - Distance
   - estimated_duration_minutes
   ```

5. **schedules**
   ```
   - ScheduleID (PRIMARY KEY)
   - TrainNumber (FOREIGN KEY → trains)
   - RouteID (FOREIGN KEY → routes)
   - DepartureTime
   - ArrivalTime
   - off_day
   - is_active (BOOLEAN)
   ```

6. **fares**
   ```
   - FareID (PRIMARY KEY)
   - RouteID (FOREIGN KEY → routes)
   - ClassType (AC/Non-AC)
   - TotalAmount
   ```

7. **bookings**
   ```
   - TicketID (PRIMARY KEY)
   - PassengerID (FOREIGN KEY → passengers)
   - ScheduleID (FOREIGN KEY → schedules)
   - BookingDate
   - SeatStatus (Confirmed/Cancelled)
   - DynamicPricingFactor
   - pnr_number (UNIQUE)
   ```

8. **payments**
   ```
   - PaymentID (PRIMARY KEY)
   - TicketID (FOREIGN KEY → bookings)
   - Amount
   - PaymentDate
   - Method (Card/bKash/Cash)
   - payment_status (Pending/Completed/Refunded)
   - transaction_id
   ```

9. **cancellations**
   ```
   - CancellationID (PRIMARY KEY)
   - TicketID (FOREIGN KEY → bookings)
   - CancellationDate
   - Reason
   ```

10. **refunds**
    ```
    - RefundID (PRIMARY KEY)
    - CancellationID (FOREIGN KEY → cancellations)
    - RefundAmount
    - Status (Processed/Pending)
    ```

---

## 10. How are relationships handled?

### Relationship Types:

#### One-to-Many:
```
users (1) ────── (Many) passengers
  UserID ─────────── UserID

passengers (1) ──── (Many) bookings
  PassengerID ────── PassengerID

schedules (1) ────── (Many) bookings
  ScheduleID ───────── ScheduleID
```

#### Many-to-One:
```
bookings → passengers → users
bookings → schedules → trains
bookings → schedules → routes
payments → bookings
cancellations → bookings
refunds → cancellations
```

#### One-to-One (implied):
```
bookings → payments (one payment per booking)
```

### Normalized Tables:
- No redundant data
- Foreign key constraints
- Separate fare, route, schedule tables

---

## 11. What are the constraints and normalization level?

### Constraints:

1. **Primary Keys**: Auto-increment IDs
2. **Foreign Keys**: Reference integrity
3. **Unique Constraints**: Username, Email, PNR
4. **Not Null**: Required fields
5. **Boolean**: is_active, is_verified

### Normalization:

**3NF (Third Normal Form)**:
- Each table has single purpose
- No transitive dependencies
- All non-key attributes depend on primary key

Example:
```
✓ Good: passengers table has UserID reference
✓ Good: bookings has separate foreign keys
✓ Good: fares separate from routes
```

---

## 12. What happens in the database when a ticket is booked?

### Database Transaction Steps:

```sql
1. -- Find or create user (if guest)
   SELECT UserID FROM users WHERE Username = 'guest_user'

2. -- Insert passenger
   INSERT INTO passengers (UserID, PassportNumber, FullName, DateOfBirth, Gender)
   VALUES (user_id, passport, fullname, dob, gender)

3. -- Generate PNR
   pnr = "PNR" + date + random_hex

4. -- Insert booking (with generated PNR)
   INSERT INTO bookings (PassengerID, ScheduleID, BookingDate, SeatStatus, pnr_number)
   VALUES (passenger_id, schedule_id, now(), 'Confirmed', pnr)

5. -- Insert payment
   INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id)
   VALUES (ticket_id, amount, now(), method, status, txn_id)
```

### Auto-commit:
- SQLite/Turso auto-commits each statement
- No explicit transaction needed

---

## 13. How does seat availability work?

### Calculation:
```sql
SELECT TotalSeats - BookedSeats AS AvailableSeats
FROM trains
LEFT JOIN (
    SELECT ScheduleID, COUNT(*) as BookedSeats
    FROM bookings
    WHERE SeatStatus = 'Confirmed'
    GROUP BY ScheduleID
) b ON schedules.ScheduleID = b.ScheduleID
```

### Display on Homepage:
- Shows AvailableSeats for each schedule
- Color-coded (green > 20, yellow < 20, red = 0)

### Real-time Check:
- Not implemented (potential race condition)

---

## 14. What happens if two users try to book the last seat at the same time?

### Current Implementation:
**No locking mechanism exists!**

### Race Condition Scenario:
```
User A                          User B
  │                               │
  ├─→ Check seats: Available=1   ├─→ Check seats: Available=1
  │                               │
  ├─→ INSERT booking ──────────────┼─→ INSERT booking
  │       │                      │       │
  │       └─→ COMMIT ✓           ├─→ COMMIT ✓
  │                               │
  └─→ Seats = 0                   └─→ Seats = -1 (OVERBOOK!)
```

### Missing Solutions:
- Transaction isolation
- Row-level locking
- Optimistic concurrency

### Fixes for Production:
```python
# Option 1: Database-level lock
LOCK TABLES bookings WRITE
UNLOCK TABLES

# Option 2: Check-and-reserve
BEGIN TRANSACTION
SELECT seats FROM schedule WHERE... FOR UPDATE
UPDATE schedule SET seats = seats - 1 WHERE seats > 0
COMMIT

# Option 3: Optimistic locking
UPDATE schedules SET version = version + 1 
WHERE ScheduleID = ? AND version = ?
-- If rows affected = 0, retry
```

---

## 15. How do you prevent duplicate bookings?

### Current Prevention:

1. **Unique PNR**: Each booking gets unique PNR
   ```python
   pnr = f"PNR{datetime.now()}{uuid.uuid4().hex[:8].upper()}"
   ```

2. **Payment Status**: Can't re-use payment
   - Payment record is unique per booking
   - No duplicate payment entry

3. **User Login**: Must be logged in OR use guest account

### Missing:
- No credit card reservation lock (hold seat briefly)
- No OTP verification

### Production Improvements:
- Reserve-then-confirm pattern (hold seat for 10 min)
- OTP for payment confirmation

---

## 16. How transaction works here

### Transaction Implementation:

**SQLite/Turso特性**:
- Each statement auto-commits
- No explicit BEGIN/COMMIT

```python
# Flask code - no explicit transaction
cursor.execute("INSERT INTO bookings (...) VALUES (...)")
conn.commit()  # No actual effect in Turso
```

### Problem:
- No atomic operations
- If payment insert fails, booking may still exist

### Fix for Production:
```python
# Should use database transactions
try:
    cursor.execute("BEGIN")
    cursor.execute("INSERT INTO bookings ...")
    cursor.execute("INSERT INTO payments ...")
    cursor.execute("COMMIT")
except:
    cursor.execute("ROLLBACK")
```

---

## 17. How is ticket cancellation handled?

### Cancellation Flow:

```
User clicks Cancel → /cancel/<ticket_id>
       ↓
Check: Is ticket Confirmed?
       ↓
IF Yes:
  1. Insert into cancellations table
  2. Calculate refund (90% of amount)
  3. Insert into refunds table
  4. Update booking status to 'Cancelled'
  5. Commit
  6. Show success with refund amount
```

### Code:
```python
# Insert cancellation record
INSERT INTO cancellations (TicketID, CancellationDate, Reason)
VALUES (ticket_id, now(), 'User Request')

# Calculate 90% refund
refund_amount = amount * 0.90

# Insert refund
INSERT INTO refunds (CancellationID, RefundAmount, Status)
VALUES (cancellation_id, refund_amount, 'Processed')

# Update booking status
UPDATE bookings SET SeatStatus = 'Cancelled' WHERE TicketID = ticket_id
```

### Refund Amount:
- **90% of ticket price returned**
- 10% retained as cancellation fee

### Admin View:
- Can view all cancellations at `/admin/cancellations`

---

## 18. How payment handling and refund logic works here?

### Payment Methods Supported:
- Credit Card
- Debit Card
- bKash
- Nagad
- Rocket
- Cash

### Payment Flow:

```python
# At booking time
IF payment_method == 'Cash':
    payment_status = 'Completed'  # Instant
ELSE:
    payment_status = 'Pending'    # Needs processing

# Redirect to payment page
# User enters card/mobile details
# System validates and updates to 'Completed'
```

### Validation:

**Card Validation (Luhn Algorithm)**:
```python
def luhn_check(card_number):
    digits = [int(d) for d in card_number]
    odd_digits = digits[-1::-2]
    even_digits = digits[-2::-2]
    checksum = sum(odd_digits)
    for d in even_digits:
        d *= 2
        if d > 9:
            d -= 9
        checksum += d
    return checksum % 10 == 0
```

**Mobile Validation**:
- Must be 11 digits
- Must start with 013-019
- PIN must be 4+ digits

### Test Cards Accepted:
- 4111111111111111
- 5500000000000004
- 4242424242424242

### Refund Logic:
- Automatic on cancellation
- 90% of original amount
- Status: 'Processed'

---

## 19. How do you handle user authentication (login/signup)?

### Authentication Flow:

**Registration** (`/register`):
```python
1. Validate inputs (username, password, email, fullname)
2. Check password length ≥ 6 characters
3. Check username uniqueness
4. Check email uniqueness (if provided)
5. Hash password using werkzeug
6. INSERT into users with role 'Passenger'
7. Create session with user_id
8. Redirect to dashboard
```

**Login** (`/login`):
```python
1. Get username and password
2. Find user by username
3. Check user exists and is_active
4. Verify password (support both hash and plaintext)
5. Upgrade plaintext to hash if needed
6. Set session variables
7. Redirect to dashboard
```

### Session Variables:
```python
session['user_id'] = user['UserID']
session['username'] = user['Username']
session['fullname'] = user['FullName']
session['role'] = user['Role']
session.permanent = True
```

### Decorators:
```python
@login_required  # Requires user_id in session
@admin_required  # Requires role = 'Admin'
```

---

## 20. How do you protect passwords?

### Password Hashing:

**Method 1: werkzeug security**:
```python
from werkzeug.security import generate_password_hash, check_password_hash

# Hash generation
password_hash = generate_password_hash(password)
# Output: pbkdf2:sha256:iterations...

# Verification
is_valid = check_password_hash(password_hash, password)
```

**Legacy Support**:
- Old system stored plaintext passwords
- Code checks both hash and plaintext
- Automatically upgrades to hash on login

### Security Features:
- Uses PBKDF2 or scrypt
- Salt automatically generated
- Multiple iterations

---

## 21. How do you protect user data?

### Session Security:
```python
app.config['PERMANENT_SESSION_LIFETIME'] = timedelta(hours=8)
```

### CSRF Protection:
```python
from flask_wtf.csrf import CSRFProtect
csrf = CSRFProtect(app)
```

### Form Protection:
- CSRF tokens in all forms
- Validates on submission

### Data Not Exposed:
- Password hashes shown instead of passwords
- Session-only access to user_id

### Missing Protections:
- No encryption at rest
- No HTTPS enforcement
- No rate limiting
- No 2FA

---

## 22. How do you prevent SQL injection or unauthorized access?

### SQL Injection Prevention:

**Using Parameterized Queries**:
```python
# Safe - uses %s placeholders
cursor.execute(
    "SELECT * FROM users WHERE Username = %s",
    (username,)
)

# Unsafe - DON'T DO THIS
# cursor.execute(f"SELECT * FROM users WHERE Username = '{username}'")
```

### Current Implementation:
✓ All queries use parameterized placeholders

### Authorization:
```python
# Login Required
@login_required
def dashboard():
    if 'user_id' not in session:
        return redirect(url_for('login'))

# Admin Only
@admin_required
def admin_dashboard():
    if session.get('role') != 'Admin':
        return redirect(url_for('index'))
```

### Missing:
- No prepared statements
- No input sanitization
- No WAF

---

## 23. Is your system mobile-friendly?

### Responsive Design:
**Yes** - Uses CSS variables and media queries:

```css
/* Base styles */
.dashboard-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 15px;
}

/* Responsive */
@media (max-width: 768px) {
    .dashboard-grid {
        grid-template-columns: 1fr;
    }
}
```

### Mobile Features:
- Single column layouts on small screens
- Touch-friendly buttons
- Form inputs sized for mobile
- Responsive tables with scroll

### Test On:
- Mobile browsers
- Tablet browsers
- Desktop browsers

---

## 24. How easy is it for a user to book a ticket?

### User Journey:

```
Step 1: Visit homepage
        └─> All schedules displayed

Step 2: Find train
        └─> Browse or use browser search

Step 3: Click "Book" button
        └─> Opens booking form

Step 4: Fill details
        - Full Name (required)
        - Date of Birth (required)
        - Gender (required)
        - Passport/NID (required)
        - Payment Method (required)

Step 5: Click "Book Now"
        └─> Creates booking + PNR

Step 6: Complete payment
        └─> If card/mobile: enter details

Step 7: Get ticket
        └─> View on screen + PDF download
```

### Time: ~2-3 minutes for first user
### Time: ~1 minute for returning user

---

## 25. What are some bugs you encountered?

### Bugs Fixed:

1. **Dashboard 500 Error - Join Failure**
   - Problem: JOIN on passengers table failed when no record existed
   - Fix: Changed to LEFT JOINs

2. **'int object' has no attribute 'strftime'**
   - Problem: Datetime objects not formatted properly in templates
   - Fix: Remove strftime() calls, display as string

3. **Admin Revenue Calculation Bug**
   - Problem: Used wrong index `revenue_trend[0]` instead of total revenue
   - Fix: Separate total_revenue query

4. **Booking without Login**
   - Guests could book but failed to get passenger record
   - Fix: Auto-create guest user account

### Known Remaining Issues:

- No race condition handling
- No transaction rollback
- No seat locking
- Payment is mock (not real gateway)
- No email notifications

---

## 26. How does your system handle failures?

### Error Handling:

**Database Connection Failed**:
```python
conn = get_db_connection()
if not conn:
    return "Database Connection Failed", 500
```

**Query Error**:
```python
except Error as e:
    print(f"Query Error: {e}")
    return f"Database Query Error: {e}", 500
```

**Booking Failure**:
```python
except Error as e:
    conn.rollback()
    flash(f"Booking Failed: {str(e)}", "danger")
    return redirect(url_for('book_ticket'))
```

### User Feedback:
- Flash messages display errors
- Redirects to previous page

### Missing:
- No retry logic
- No fallback to cache
- No circuit breaker
- No retry queues

---

## 27. How would your system scale for millions of users?

### Current Limitations:
- Single database connection
- No connection pooling
- Synchronous processing
- No CDN

### Scaling Strategies:

1. **Database**:
   ```python
   # Add connection pool
   from-dbutils.pool import ThreadPooledDBUtils
   pool = ThreadPooledDBUtils(pool_size=10)
   ```

2. **Caching**:
   ```python
   # Cache schedules
   @cache.cached(timeout=300)
   def get_schedules():
       ...
   ```

3. **Read Replicas**:
   - Use for SELECT queries
   - Write to master only

4. **Horizontal Scaling**:
   ```bash
   # Run multiple instances
   gunicorn -w 4 app:app
   ```

5. **CDN**:
   - Static assets via CDN
   - Images, CSS, JS

### Estimated Capacity:
- Current: ~100-500 concurrent users
- After scaling: ~10,000+ concurrent users

---

## 28. How would you handle peak booking times?

### Peak Times Scenarios:
- Eid holidays
- Pohela Boishakh
- Long weekends

### Current Limitations:
- No queue system
- No rate limiting
- No booking cap

### Solutions:

1. **Rate Limiting**:
```python
from flask_limiter import Limiter
limiter = Limiter(app, key_func=get_remote_address)

@app.route("/book")
@limiter.limit("5 per minute")
def book():
    ...
```

2. **Booking Queue**:
```python
# Redis queue for bookings
import redis
queue = redis.Redis()

def book_ticket():
    queue.lpush('booking_queue', ticket_data)
    return "Queued"
```

3. **Auto-scaling**:
```yaml
# Kubernetes config
replicas: 3
min: 3
max: 20
```

4. **Temporary Capacity**:
- Increase database connections
- Reduce cache timeout

---

## 29. How did you design your homepage?

### Homepage Design (`/`):

**Purpose**: Show available train schedules

**Features**:
- Header with Bangladesh Railway branding
- Navigation bar (login, register, stations)
- All active schedules displayed
- Each schedule shows:
  - Train name/number
  - Route (source → destination)
  - Departure/Arrival time
  - Class type and price
  - Available seats
- Color-coded seat availability
- "Book" button for each schedule

**Layout**:
```
┌─────────────────────────────────────────┐
│ Bangladesh Railway                    │
├────────────────���─���──────────────────────┤
│ [Search] [Login] [Register]          │
├─────────────────────────────────────────┤
│ ┌─────────────────────────────────┐  │
│ │ Train: Padma Express              │  │
│ │ Dhaka → Chittagong              │  │
│ │ 10:00 AM → 04:00 PM         │  │
│ │ AC - ৳500 | 30 seats        │  │
│ │ [Book]                          │  │
│ └─────────────────────────────────┘  │
│ ┌─────────────────────────────────┐  │
│ │ Train: Sundarban Express         │  │
│ │ Dhaka → Khulna               │  │
│ │ ...                          │  │
│ └─────────────────────────────────┘  │
└─────────────────────────────────────────┘
```

### Design Principles:
- Simple, clean interface
- Clear information hierarchy
- Easy navigation
- Mobile-responsive

---

## 30. Why did you structure the booking page this way?

### Booking Page Structure (`/book/<id>`):

**Two-Step Flow**:

1. **GET Request**: Display booking form
   - Shows selected train/schedule details
   - Form for passenger information

2. **POST Request**: Process booking
   - Validates inputs
   - Creates records
   - Redirects to payment or success

### Form Fields:
```
┌─────────────────────────────────────┐
│ Booking: Padma Express              │
├─────────────────────────────────────┤
│ Dhaka → Chittagong                 │
│ Departure: 10:00 AM              │
│ Price: ৳500                      │
├─────────────────────────────────────┤
│ Passenger Details                  │
│ ├─ Full Name: [___________]       │
│ ├─ Date of Birth: [___________] │
│ ├─ Gender: ( ) Male ( ) Female │
│ ├─ Passport/NID: [___________] │
│ └─ Payment: ( ) bKash ( ) Card │
│                                   │
│ [Confirm Booking]                 │
└─────────────────────────────────────┘
```

### Design Decisions:
- **Single page**: All info on one screen
- **Pre-filled**: Shows selected train details
- **Minimal fields**: Only required information
- **Clear CTA**: Large submit button
- **No navigation**: Prevents confusion

### Alternative (not implemented):
- Multi-step wizard
- Seat selection page
- Review page

---

## 31. What are the main components/pages of your frontend?

### Frontend Pages:

| Route | Template | Purpose |
|-------|----------|---------|
| `/` | index.html | Homepage, all schedules |
| `/login` | login.html | User login |
| `/register` | register.html | User registration |
| `/dashboard` | dashboard.html | User bookings |
| `/book/<id>` | book.html | Booking form |
| `/payment/<id>` | payment.html | Payment gateway |
| `/ticket/success/<id>` | ticket_success.html | Confirmation |
| `/bookings` | bookings.html | All user bookings |
| `/stations` | stations.html | Station list |
| `/profile` | profile.html | User profile |
| `/about` | about.html | About info |

### Admin Pages:

| Route | Template | Purpose |
|-------|----------|---------|
| `/admin` | admin_dashboard.html | Analytics |
| `/admin/trains` | admin_trains.html | Train management |
| `/admin/routes` | admin_routes.html | Route management |
| `/admin/schedules` | admin_schedules.html | Schedule management |
| `/admin/search` | admin_search.html | Global search |
| `/admin/cancellations` | admin_cancellations.html | Refund history |
| `/admin/reports` | admin_reports.html | Analytics reports |

---

## 32. What frontend technologies did you use?

### Technologies:

1. **HTML5**
   - Semantic markup
   - Forms and inputs

2. **CSS3**
   - CSS Variables for theming
   - Flexbox and Grid
   - Responsive design
   - Custom font (Inter)

3. **JavaScript**
   - Minimal client-side logic
   - Chart.js for admin charts

4. **Jinja2 Templates**
   - Template inheritance (base.html)
   - Variables and filters
   - Control structures (if, for)

5. **External Libraries**:
   - Font Awesome 6.4 (icons)
   - Chart.js (admin charts)
   - Google Fonts (Inter)

### No JavaScript Frameworks:
- No React/Vue/Angular
- Server-side rendering only
- Form submissions are traditional POST

---

## 33. How do you handle user input in forms?

### Form Handling:

**Login Form**:
```html
<form method="POST" action="/login">
    <input type="text" name="username" required>
    <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
```

**Registration Form**:
```html
<form method="POST" action="/register">
    <input type="text" name="username" required>
    <input type="email" name="email">
    <input type="password" name="password" required>
    <input type="text" name="fullname" required>
    <button type="submit">Register</button>
</form>
```

**Booking Form**:
```html
<form method="POST" action="/book/{{ schedule_id }}">
    <input type="text" name="fullname" required>
    <input type="date" name="dob" required>
    <select name="gender" required>
    <input type="text" name="passport" required>
    <select name="payment_method" required>
    <button type="submit">Book Now</button>
</form>
```

### Form Features:
- `required` attribute for mandatory fields
- Proper input types (date, email, etc.)
- CSRF token hidden field
- Clear labels and placeholders

---

## 34. What validation did you apply?

### Server-Side Validation:

**Registration**:
```python
if not username or not password or not fullname:
    flash('Please fill all required fields')
    return redirect(url_for('register'))

if len(password) < 6:
    flash('Password must be at least 6 characters')
    return redirect(url_for('register'))
```

**Login**:
```python
if not username or not password:
    flash('Please fill all fields')
    return redirect(url_for('login'))
```

**Booking**:
```python
if not all([fullname, dob, gender, passport, payment_method]):
    flash('Please fill all fields')
    return redirect(url_for('book_ticket'))
```

**Payment**:
```python
# Card: Luhn algorithm check
# Mobile: 11-digit BD format check
```

### Client-Side Validation:
- HTML5 `required` attribute
- Input type constraints
- Min length on password

---

## 35. How does your frontend communicate with the backend?

### Communication Flow:

```
┌──────────┐     HTTP      ┌─────────────┐     SQL      ┌──────┐
│  Browser │ ───────────→  │  Flask App  │ ─────────→  │ Turso│
│          │ ←───────────  │            │ ←─────────  │      │
│  HTML    │   200 OK     │  Template   │   Results  │ Data │
│  Page    │              │  Render    │           │      │
��─��────────┘              └─────────────┘           └──────┘
```

### Methods:

1. **GET Requests**:
```python
@app.route('/dashboard')
def dashboard():
    return render_template('dashboard.html', bookings=...)
```

2. **POST Requests**:
```python
@app.route('/login', methods=['POST'])
def login():
    # Process form data
    return redirect(url_for('dashboard'))
```

3. **URL Parameters**:
```python
@app.route('/book/<int:schedule_id>')
def book_ticket(schedule_id):
    # Use schedule_id in query
```

### No AJAX:
- Pure server-side rendering
- Page reloads on every action

---

## 36. How do you manage data across pages?

### Data Management:

1. **Session** (user state):
```python
session['user_id'] = user['UserID']
session['fullname'] = user['FullName']
session.permanent = True
```

2. **URL Parameters**:
```python
# /book/<schedule_id>
# /payment/<ticket_id>
# /cancel/<ticket_id>
```

3. **Database**:
```python
# Query data per page
cursor.execute("SELECT * FROM bookings WHERE user_id = ?", (user_id,))
```

4. **Template Context**:
```python
@app.context_processor
def inject_user():
    return {'current_user': {...}}
```

### Session Usage:
```html
{{ session.get('fullname') }}
{{ session.get('role') }}
```

---

## 37. How do you store user login state?

### Login State:

**Session Storage**:
```python
session.permanent = True
session['user_id'] = user['UserID']
session['username'] = user['Username']
session['fullname'] = user['FullName']
session['role'] = user['Role']
```

**Session Duration**:
```python
app.config['PERMANENT_SESSION_LIFETIME'] = timedelta(hours=8)
```

**Context Processor** (available in all templates):
```python
@app.context_processor
def inject_user():
    return {
        'current_user': {
            'id': session.get('user_id'),
            'username': session.get('username'),
            'fullname': session.get('fullname'),
            'role': session.get('role'),
            'is_authenticated': 'user_id' in session,
            'is_admin': session.get('role') == 'Admin',
        }
    }
```

### Logout:
```python
@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for('index'))
```

### Cookie:
- Session stored in secure, signed cookie
- 8-hour expiration

---

## 38. What happens if the server fails?

### Failure Handling:

**Database Connection Failed**:
```python
conn = get_db_connection()
if not conn:
    return "Database Connection Failed", 500
```

**Query Error**:
```python
try:
    cursor.execute(query)
except Error as e:
    print(f"Query Error: {e}")
    return f"Database Query Error: {e}", 500
```

**User Error Message**:
- Generic error shown to user
- Detailed error logged on server
- Admin can check logs

### Missing Features:
- No auto-restart
- No health check endpoint
- No fallback server
- No error monitoring

---

## 39. How do you show errors to users?

### Flash Messages:

**Set in Python**:
```python
flash('অনুগ্রহ করে লগইন করুন | Please login first', 'warning')
flash('Invalid username or password', 'danger')
flash('Booking successful!', 'success')
```

**Display in Template**:
```html
{% with messages = get_flashed_messages(with_categories=true) %}
    {% if messages %}
        <div class="flash-messages">
            {% for category, message in messages %}
                <div class="alert alert-{{ category }}">
                    {{ message }}
                </div>
            {% endfor %}
        </div>
    {% endif %}
{% endwith %}
```

**Categories**:
- success (green)
- warning (yellow)
- danger (red)
- info (blue)

### Other Errors:
- HTTP 500 for server errors
- Custom error messages per route

---

## 40. What are the weaknesses of your system?

### Weaknesses:

1. **No Real Payment Integration**
   - Mock payment only
   - No actual card processing

2. **No Seat Locking/Race Conditions**
   - Two users can overbook

3. **No Transaction Atomicity**
   - Partial failures possible

4. **No Email Notifications**
   - No confirmation emails

5. **Limited Search**
   - No advanced filtering
   - No date-based search

6. **No Mobile App**
   - Web only

7. **No Offline Support**
   - Needs constant connection

8. **No Booking Queue**
   - Can crash under load

9. **No OTP Verification**
   - Less secure

10. **Limited Admin Features**
    - Can't assign roles
    - No user management

---

## 41. What features are missing?

### Missing Features:

1. **User Features**
   - [ ] Real payment gateway integration (Stripe, PayPal)
   - [ ] Email/ticket notifications
   - [ ] Seat selection interface
   - [ ] Multiple passenger booking
   - [ ] Child/miscount discounts
   - [ ] Train delay notifications
   - [ ] Booking reminders

2. **Admin Features**
   - [ ] User management
   - [ ] Role management
   - [ ] Dynamic pricing
   - [ ] Revenue reports export
   - [ ] Station management UI
   - [ ] Coach/seat management

3. **Technical Features**
   - [ ] Connection pooling
   - [ ] Redis caching
   - [ ] API endpoints (REST)
   - [ ] Mobile app
   - [ ] Push notifications

4. **Security**
   - [ ] Two-factor authentication
   - [ ] CAPTCHA
   - [ ] Rate limiting
   - [ ] Audit logging
   - [ ] HTTPS enforcement

---

## 42. Can this system be used in real railways?

### Real-World Readiness:

**Suitable For**:
- Proof of concept
- Academic/DBMS project
- Small private railways
- Demo/prototype systems

**NOT Suitable For** (as-is):
- Government railways (Bangladesh Railway)
- Large-scale production
- Real financial transactions

### Required Changes:

1. **Payment**: Replace with real payment gateway
2. **Security**: Add 2FA, CAPTCHA, encryption
3. **Concurrency**: Add seat locking, transactions
4. **Compliance**: Railway regulations
5. **Scale**: Redis cache, read replicas
6. **Legal**: Payment card industry compliance

### Conclusion:
As a **DBMS course project**, this system demonstrates:
- Database design
- CRUD operations
- Authentication
- Business logic
- MVC architecture
- User interface design

For real-world deployment, significant additional development would be required.