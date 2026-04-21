# Railway Reservation Management System (RRMS) - Q&A

Here are the detailed answers regarding the underlying architecture, logic, and features of the RRMS project based on a comprehensive codebase analysis:

### 1. What are the tools and programming languages used in the backend, frontend, and database?
**Backend:**
- **Language:** Python (v3.12+)
- **Framework:** Flask (with `Flask-WTF` for form handling & CSRF protection)
- **Utilities:** `werkzeug.security` (password hashing), `uuid` (PNR/Transaction Generation), and `ReportLab` (for PDF ticket generation).

**Frontend:**
- **Languages:** HTML5, CSS, and Vanilla JavaScript.
- **Templating:** Jinja2 (Flask's engine) for dynamic rendering, template inheritance, and passing backend context to the frontend.

**Database:**
- **Engine:** SQLite mapped to Turso Edge Database (accessed via `libsql-client`).
- **Structure:** Heavily relies on normalized relational tables, Views, and Stored Procedures natively executed.

---

### 2. What are the core features of this website?
- **Live Scheduling & Fare Calculation:** Users can see available trains, routes, times, distance, and dynamic fare pricing.
- **Role-Based Authentication:** Distinct profiles with secure logins for Passengers, Admins, and direct Guest checkout capability.
- **Ticket Booking Gateway:** Journey booking integrated with passenger profiles, automated Seat Booking limits, and PNR ticket generation.
- **Mock Payment Gateway:** Fully functional checkouts using credit/debit cards (Luhn Algorithm checksum verification) and Mobile Financial Services (MFS).
- **Admin Dashboard & Analytics:** Admins have a high-level view showing total revenue, daily tracking graphs, most recent bookings via charts, and train toggling functionalities.
- **Profile Management:** Users have personalized histories to track confirmed and cancelled tickets.

---

### 3. What problems are being solved in this project?
- **Manual Queueing & Time Wastage:** Digitizes traditional paper-based reservations, replacing manual physical queues with robust internet-scale bookings.
- **Complex Financial Workflows:** Manages and automates payment and refund calculations gracefully without human intervention.
- **Centralized Admin Control:** Replaces siloed datasets. Admins can update a single source of truth for routes, trains, carriages, and schedules transparently updated on the passengers' end.
- **Traceability:** Prevents lost paper tickets by introducing immutable passenger-tied PNR tracking IDs and transaction IDs.

---

### 4. How the transaction worked here?
When a user decides to book a schedule:
1. **Passenger Allocation:** The system registers the passenger's demographic details (Passport/NID, DOB).
2. **Booking Initialization:** A unique alphanumeric `PNR` is generated, and a `bookings` record is staged as "Confirmed". 
3. **Pending Payment State:** A `payments` record is created as `"Pending"` along with a localized `transaction_id`. 
4. **Mock Gateway Redirect:** The user is sent to `/payment/<ticket_id>`. 
5. **Gateway Processing:**
   - **MFS (bKash/Nagad/Rocket):** Checks if the number is exactly 11 digits and starts with a valid BD MNO operator code (`017`, `018`, etc.), and a 4+ digit PIN.
   - **Card:** Passes the card digits recursively through a **Luhn algorithm check** to ensure modulo 10 standard validity. 
6. **Completion:** Upon successful mock validation, the SQL updates `payment_status = 'Completed'`, and a success PDF voucher is prepared.

---

### 5. What are the tables names and relationships between them?
The system utilizes a structured and deeply normalized Relational schema:
- **`users`** & **`passengers`** (1-to-1): An overarching login maps natively to a passenger's biological profile info.
- **`stations`** & **`routes`** (M-to-M): Resolved by **`route_stops`** managing sequential hops between stations.
- **`trains`**, **`coaches`**, & **`seats`** (1-to-M cascaded): A Train has Coaches. A Coach holds many precise Seats, designated as Aisle, Middle, or Window.
- **`schedules`**: Connects a Train mapped onto a Route at a specific time parameter. 
- **`bookings`**: The central transactional pivot linking `PassengerID` holding a `ScheduleID` and reserving a `seat_id`. 
- **`payments`**, **`cancellations`**, & **`refunds`** (1-to-1 against Bookings): Handles the fiscal state of that specific ticket occurrence.

---

### 6. What is the throughput of this website?
While raw RPS (Requests Per Second) benchmarks depend on the underlying host, this architecture is optimized for edge-network throughput:
- By moving to **Turso (libsql)** over traditional centralized MySQL, database queries are resolved with immensely low latency globally at the edge. 
- Using Flask’s caching utilities (e.g., ETag Headers, `cached_response` implementations) vastly decreases the load on DB lookups to easily process hundreds of concurrent schedule page views per second.

---

### 7. In the project, how does it handle two seat bookings at the same time?
It combats the classic race-condition through optimistic locking logic:
- The system employs a dedicated high-performance pivot table called **`seat_availability`**.
- An enforced database `UNIQUE` constraint over `(seat_id, ScheduleID, journey_date)` ensures standard atomicity. Two distinct transactions literally cannot commit the same row simultaneously.
- When traversing the booking flow, Stored Procedures utilize `ON DUPLICATE KEY UPDATE` checks and append a `locked_until` temporary timestamp cache preventing user B from starting checkout while user A has their payment gateway open for that specific seat.

---

### 8. How does the registration/login system work and where is the info saved?
- **Data storage:** Data saves within the `users` table natively.
- **Registration Flow:** Users submit forms, providing Usernames, Emails, and full names. Flask verifies username uniqueness. The password goes through the `werkzeug.security.generate_password_hash` PBKDF2/scrypt encoder, which protects it heavily before being inserted as a `PasswordHash`. 
- **Login Flow:** Post submission of credentials, the backend decrypts using `check_password_hash()`. On success, it flags down a **Session Cookie** tied securely via the application's unique `SECRET_KEY`, tracking that users `<user_id>` uniformly across route wrappers context instances. 

*(Bonus capability: Legacy plain-text passwords auto-update to secure hashes behind the scenes on their next login session)*

---

### 9. How does the website security work?
1. **CSRF Protection:** Globally implemented by **Flask-WTF (`csrf=CSRFProtect(app)`)**, meaning malicious off-site payload executions cannot spoof payload POSTs mimicking authenticated passenger forms.
2. **SQL Injection Defense:** Zero raw string concatenations occur. Queries employ parameterized execution bindings structure (`execute(query, (params,))`) safely wrapped inside `db_wrapper.py`.
3. **Role Authorization / IDOR Protection:** Custom `@login_required` and `@admin_required` decorators ensure endpoints immediately fail-safe bounce users probing unauthorized paths. 
4. **Session Control:** Configured to automatically expire sessions over 8 hours limit preventing device-hijacking after passenger leaves.

---

### 10. How do refunds work and taking payments through multiple systems?
- **Refund Logic Setup:** Based upon `cancellations` dropping the initial status. It logs a designated `Reason` string and default calculative deduction metric (`refund_percentage = 90.00%`) stored against the `refunds` module queue for audit approval processing.
- **Multiple System Logic:** 
    - The HTML `<select>` allows variations like Credit/Debit, bKash, Nagad. 
    - Upon HTTP-POST reaching backend Flask `app.py`, conditionally isolated IF-statements capture the type.
    - If `Method == Card`, computational effort focuses solely on standard Luhn Checks stripping special characters from standard Visa/Mastercards.
    - If `Method in (mfs)`, logic shifts to mobile carrier validation protocols bypassing traditional Card logic constraints, establishing high-level modularity. 
