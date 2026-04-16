import os
import io
import uuid
from functools import wraps
from datetime import datetime, timedelta
from decimal import Decimal

from flask import (
    Flask,
    render_template,
    request,
    redirect,
    url_for,
    flash,
    jsonify,
    session,
    make_response,
    send_file,
    abort,
)
from flask_wtf.csrf import CSRFProtect
from werkzeug.security import generate_password_hash, check_password_hash

# DB wrapper for Turso
from database.db_wrapper import get_db_connection

Error = Exception

# Optional: PDF generation
try:
    from reportlab.lib.pagesizes import A4
    from reportlab.lib.units import mm
    from reportlab.pdfgen import canvas as pdf_canvas
    from reportlab.lib.colors import HexColor

    HAS_REPORTLAB = True
except ImportError:
    HAS_REPORTLAB = False

# ============================================
# APP CONFIG
# ============================================
app = Flask(__name__)
app.secret_key = os.environ.get(
    "SECRET_KEY", "0b85b93c2d511afa9469a02dd195d45d8dfa6305"
)
app.config["WTF_CSRF_TIME_LIMIT"] = 3600
app.config["PERMANENT_SESSION_LIFETIME"] = timedelta(hours=8)

csrf = CSRFProtect(app)


# ============================================
# AUTH HELPERS
# ============================================
def login_required(f):
    """Decorator to require login for a route"""

    @wraps(f)
    def decorated_function(*args, **kwargs):
        if "user_id" not in session:
            flash("অনুগ্রহ করে লগইন করুন | Please login first", "warning")
            return redirect(url_for("login", next=request.url))
        return f(*args, **kwargs)

    return decorated_function


def admin_required(f):
    """Decorator to require admin role"""

    @wraps(f)
    def decorated_function(*args, **kwargs):
        if "user_id" not in session:
            flash("অনুগ্রহ করে লগইন করুন | Please login first", "warning")
            return redirect(url_for("login"))
        if session.get("role") != "Admin":
            flash("অ্যাক্সেস অনুমোদিত নয় | Access denied", "danger")
            return redirect(url_for("index"))
        return f(*args, **kwargs)

    return decorated_function


def get_current_user_id():
    """Get current user ID, or guest user ID"""
    return session.get("user_id")


# ============================================
# TEMPLATE CONTEXT
# ============================================
@app.context_processor
def inject_user():
    """Make user info available in all templates"""
    return {
        "current_user": {
            "id": session.get("user_id"),
            "username": session.get("username"),
            "fullname": session.get("fullname"),
            "role": session.get("role"),
            "is_authenticated": "user_id" in session,
            "is_admin": session.get("role") == "Admin",
        }
    }


# ============================================
# CACHE HELPER
# ============================================
def cached_response(data, max_age=300, status=200):
    """Create a JSON response with cache headers"""
    response = make_response(jsonify(data), status)
    response.headers["Cache-Control"] = f"public, max-age={max_age}"
    response.headers["Vary"] = "Accept-Encoding"
    etag = str(hash(str(data)))
    response.headers["ETag"] = etag
    return response


# ============================================
# ROUTE: Home Page
# ============================================
@app.route("/")
def index():
    """Home: Show Available Schedules"""
    conn = get_db_connection()
    if not conn:
        return (
            "Database Connection Failed. Please ensure MySQL is running and railway_db is imported.",
            500,
        )

    cursor = conn.cursor(dictionary=True, buffered=True)

    try:
        query = """
            SELECT
                s.ScheduleID, t.TrainName, t.TrainNumber, t.TotalSeats,
                r.SourceStation, r.DestinationStation, s.DepartureTime,
                s.ArrivalTime, r.Distance, r.estimated_duration_minutes,
                s.off_day,
                f.TotalAmount, f.ClassType,
                COUNT(b.TicketID) as BookedSeats
            FROM schedules s
            JOIN trains t ON s.TrainNumber = t.TrainNumber
            JOIN routes r ON s.RouteID = r.RouteID
            JOIN fares f ON r.RouteID = f.RouteID
            LEFT JOIN bookings b ON s.ScheduleID = b.ScheduleID AND b.SeatStatus = 'Confirmed'
            WHERE s.is_active = TRUE
            GROUP BY s.ScheduleID, f.FareID
            ORDER BY s.DepartureTime ASC
        """
        cursor.execute(query)
        schedules = cursor.fetchall()

        for schedule in schedules:
            schedule["AvailableSeats"] = (
                schedule["TotalSeats"] - schedule["BookedSeats"]
            )

        return render_template("index.html", schedules=schedules)
    except Error as e:
        print(f"Query Error: {e}")
        return f"Database Query Error: {e}", 500
    finally:
        cursor.close()
        conn.close()


# ============================================
# AUTH: Login
# ============================================
@app.route("/login", methods=["GET", "POST"])
def login():
    """User login"""
    if "user_id" in session:
        return redirect(url_for("dashboard"))

    if request.method == "POST":
        username = request.form.get("username", "").strip()
        password = request.form.get("password", "")

        if not username or not password:
            flash("অনুগ্রহ করে সব তথ্য দিন | Please fill all fields", "warning")
            return redirect(url_for("login"))

        conn = get_db_connection()
        if not conn:
            flash("ডাটাবেস সংযোগ ব্যর্থ | Database connection failed", "danger")
            return redirect(url_for("login"))

        cursor = conn.cursor(dictionary=True, buffered=True)
        try:
            cursor.execute(
                "SELECT UserID, Username, PasswordHash, FullName, Role, is_active FROM users WHERE Username = %s",
                (username,),
            )
            user = cursor.fetchone()

            if not user:
                flash("ভুল ইউজারনেম বা পাসওয়ার্ড | Invalid username or password", "danger")
                return redirect(url_for("login"))

            if not user.get("is_active", True):
                flash("আপনার অ্যাকাউন্ট নিষ্ক্রিয় | Your account is inactive", "danger")
                return redirect(url_for("login"))

            # Check password (support both hashed and legacy plaintext)
            pw_hash = user["PasswordHash"]
            password_valid = False
            if pw_hash.startswith(("pbkdf2:", "scrypt:")):
                password_valid = check_password_hash(pw_hash, password)
            else:
                # Legacy plaintext comparison
                password_valid = pw_hash == password
                # Upgrade to hashed password
                if password_valid:
                    new_hash = generate_password_hash(password)
                    cursor.execute(
                        "UPDATE users SET PasswordHash = %s WHERE UserID = %s",
                        (new_hash, user["UserID"]),
                    )
                    conn.commit()

            if not password_valid:
                flash("ভুল ইউজারনেম বা পাসওয়ার্ড | Invalid username or password", "danger")
                return redirect(url_for("login"))

            # Set session
            session.permanent = True
            session["user_id"] = user["UserID"]
            session["username"] = user["Username"]
            session["fullname"] = user["FullName"]
            session["role"] = user["Role"]

            flash(f"স্বাগতম, {user['FullName']}! | Welcome back!", "success")

            # Redirect to next URL or dashboard
            next_url = request.args.get("next") or request.form.get("next")
            if next_url and next_url.startswith("/"):
                return redirect(next_url)
            return redirect(url_for("dashboard"))

        except Error as e:
            flash(f"লগইন ত্রুটি | Login error: {str(e)}", "danger")
            return redirect(url_for("login"))
        finally:
            cursor.close()
            conn.close()

    return render_template("login.html")


# ============================================
# AUTH: Logout
# ============================================
@app.route("/logout")
def logout():
    """User logout"""
    session.clear()
    flash("সফলভাবে লগআউট হয়েছে | Logged out successfully", "success")
    return redirect(url_for("index"))


# ============================================
# AUTH: Register
# ============================================
@app.route("/register", methods=["GET", "POST"])
def register():
    """User registration with password hashing"""
    if "user_id" in session:
        return redirect(url_for("dashboard"))

    if request.method == "POST":
        username = request.form.get("username", "").strip()
        password = request.form.get("password", "")
        email = request.form.get("email", "").strip()
        fullname = request.form.get("fullname", "").strip()

        if not username or not password or not fullname:
            flash(
                "অনুগ্রহ করে সব প্রয়োজনীয় তথ্য দিন | Please fill all required fields",
                "warning",
            )
            return redirect(url_for("register"))

        if len(password) < 6:
            flash(
                "পাসওয়ার্ড কমপক্ষে ৬ অক্ষরের হতে হবে | Password must be at least 6 characters",
                "warning",
            )
            return redirect(url_for("register"))

        conn = get_db_connection()
        if not conn:
            flash("ডাটাবেস সংযোগ ব্যর্থ | Database connection failed", "danger")
            return redirect(url_for("register"))

        cursor = conn.cursor(dictionary=True, buffered=True)

        try:
            cursor.execute("SELECT UserID FROM users WHERE Username = %s", (username,))
            if cursor.fetchone():
                flash("ইউজারনেম ইতিমধ্যে ব্যবহৃত | Username already exists!", "warning")
                return redirect(url_for("register"))

            if email:
                cursor.execute("SELECT UserID FROM users WHERE Email = %s", (email,))
                if cursor.fetchone():
                    flash(
                        "ইমেইল ইতিমধ্যে নিবন্ধিত | Email already registered!", "warning"
                    )
                    return redirect(url_for("register"))

            hashed_password = generate_password_hash(password)

            cursor.execute(
                """
                INSERT INTO users (Username, PasswordHash, Email, FullName, Role)
                VALUES (%s, %s, %s, %s, 'Passenger')
            """,
                (username, hashed_password, email if email else None, fullname),
            )

            conn.commit()
            user_id = cursor.lastrowid

            # Auto-login after registration
            session.permanent = True
            session["user_id"] = user_id
            session["username"] = username
            session["fullname"] = fullname
            session["role"] = "Passenger"

            flash(
                f"নিবন্ধন সফল! স্বাগতম, {fullname}! | Registration successful!", "success"
            )
            return redirect(url_for("dashboard"))

        except Error as e:
            conn.rollback()
            flash(f"নিবন্ধন ব্যর্থ | Registration failed: {str(e)}", "danger")
            return redirect(url_for("register"))
        finally:
            cursor.close()
            conn.close()

    return render_template("register.html")


# ============================================
# ROUTE: User Profile
# ============================================
@app.route("/profile", methods=["GET", "POST"])
@login_required
def profile():
    """User Profile Page"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)
    user_id = session["user_id"]

    try:
        if request.method == "POST":
            fullname = request.form.get("fullname", "").strip()
            email = request.form.get("email", "").strip()
            phone = request.form.get("phone", "").strip()

            passport = request.form.get("passport", "").strip()
            dob = request.form.get("dob", "")
            gender = request.form.get("gender", "")
            nationality = request.form.get("nationality", "Bangladeshi").strip()

            cursor.execute(
                """
                UPDATE users SET FullName = %s, Email = %s, Phone = %s
                WHERE UserID = %s
            """,
                (fullname, email if email else None, phone if phone else None, user_id),
            )

            session["fullname"] = fullname

            cursor.execute(
                "SELECT PassengerID FROM passengers WHERE UserID = %s", (user_id,)
            )
            passenger = cursor.fetchone()

            if passenger:
                cursor.execute(
                    """
                    UPDATE passengers 
                    SET PassportNumber = %s, DateOfBirth = %s, Gender = %s, Nationality = %s, FullName = %s
                    WHERE UserID = %s
                """,
                    (
                        passport if passport else None,
                        dob if dob else None,
                        gender if gender else None,
                        nationality,
                        fullname,
                        user_id,
                    ),
                )
            else:
                cursor.execute(
                    """
                    INSERT INTO passengers (UserID, PassportNumber, FullName, DateOfBirth, Gender, Nationality)
                    VALUES (%s, %s, %s, %s, %s, %s)
                """,
                    (
                        user_id,
                        passport if passport else None,
                        fullname,
                        dob if dob else None,
                        gender if gender else None,
                        nationality,
                    ),
                )

            conn.commit()
            flash("প্রোফাইল সফলভাবে আপডেট হয়েছে | Profile updated successfully", "success")
            return redirect(url_for("profile"))

        cursor.execute(
            "SELECT Username, Email, Phone, FullName, Role FROM users WHERE UserID = %s",
            (user_id,),
        )
        user_info = cursor.fetchone()

        cursor.execute(
            "SELECT PassportNumber, DateOfBirth, Gender, Nationality FROM passengers WHERE UserID = %s",
            (user_id,),
        )
        passenger_info = cursor.fetchone()

        return render_template("profile.html", user=user_info, passenger=passenger_info)
    except Error as e:
        conn.rollback()
        flash(f"প্রোফাইল আপডেট ব্যর্থ | Profile update failed: {str(e)}", "danger")
        return redirect(url_for("profile"))
    finally:
        cursor.close()
        conn.close()


# ============================================
# ROUTE: User Dashboard
# ============================================
@app.route("/dashboard")
@login_required
def dashboard():
    """User dashboard with bookings overview"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)
    bookings = []
    stats = {
        "total_bookings": 0,
        "confirmed": 0,
        "cancelled": 0,
        "total_spent": 0,
    }

    try:
        user_id = session.get("user_id")
        if not user_id:
            return redirect(url_for("login"))

        # Get user's bookings - use subquery to find passenger IDs for this user
        cursor.execute(
            """
            SELECT p.PassengerID 
            FROM passengers p 
            WHERE p.UserID = %s
            """,
            (user_id,),
        )
        passenger_ids = [row["PassengerID"] for row in cursor.fetchall()]

        if not passenger_ids:
            passenger_ids = [0]

        # Get bookings for these passengers
        placeholders = ",".join(["%s"] * len(passenger_ids))
        cursor.execute(
            f"""
            SELECT b.TicketID, b.BookingDate, b.SeatStatus, b.pnr_number,
                   COALESCE(p.FullName, '') as FullName, 
                   COALESCE(t.TrainName, '') as TrainName, 
                   COALESCE(t.TrainNumber, '') as TrainNumber,
                   COALESCE(r.SourceStation, '') as SourceStation, 
                   COALESCE(r.DestinationStation, '') as DestinationStation,
                   s.DepartureTime, s.ArrivalTime,
                   pay.Amount, pay.Method, pay.payment_status
            FROM bookings b
            LEFT JOIN passengers p ON b.PassengerID = p.PassengerID
            LEFT JOIN schedules s ON b.ScheduleID = s.ScheduleID
            LEFT JOIN trains t ON s.TrainNumber = t.TrainNumber
            LEFT JOIN routes r ON s.RouteID = r.RouteID
            LEFT JOIN payments pay ON b.TicketID = pay.TicketID
            WHERE b.PassengerID IN ({placeholders})
            ORDER BY b.TicketID DESC
            LIMIT 100
            """,
            tuple(passenger_ids),
        )
        bookings = cursor.fetchall()

        # Stats
        total_bookings = len(bookings)
        confirmed = 0
        cancelled = 0
        total_spent = 0

        for b in bookings:
            try:
                seat_status = str(b.get("SeatStatus", ""))
                if seat_status == "Confirmed":
                    confirmed += 1
                elif seat_status == "Cancelled":
                    cancelled += 1
                amount = b.get("Amount")
                if amount and seat_status == "Confirmed":
                    total_spent += float(amount)
            except:
                pass

        stats = {
            "total_bookings": total_bookings,
            "confirmed": confirmed,
            "cancelled": cancelled,
            "total_spent": total_spent,
        }

        return render_template("dashboard.html", bookings=bookings, stats=stats)
    except Exception as e:
        print(f"Dashboard error: {e}")
        return f"Error loading dashboard: {str(e)}", 500
    finally:
        cursor.close()
        conn.close()


# ============================================
# ROUTE: Admin Dashboard
# ============================================
@app.route("/admin")
@admin_required
def admin_dashboard():
    """Admin dashboard with analytics"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)

    try:
        # Total revenue
        cursor.execute("""
            SELECT COALESCE(SUM(Amount), 0) as total_revenue
            FROM payments WHERE payment_status = 'Completed'
        """)
        revenue = cursor.fetchone()["total_revenue"]

        # Total bookings
        cursor.execute("SELECT COUNT(*) as count FROM bookings")
        total_bookings = cursor.fetchone()["count"]

        # Confirmed bookings
        cursor.execute(
            "SELECT COUNT(*) as count FROM bookings WHERE SeatStatus = 'Confirmed'"
        )
        confirmed_bookings = cursor.fetchone()["count"]

        # Cancelled bookings
        cursor.execute(
            "SELECT COUNT(*) as count FROM bookings WHERE SeatStatus = 'Cancelled'"
        )
        cancelled_bookings = cursor.fetchone()["count"]

        # Total users
        cursor.execute("SELECT COUNT(*) as count FROM users WHERE Role = 'Passenger'")
        total_users = cursor.fetchone()["count"]

        # Active trains
        cursor.execute("SELECT COUNT(*) as count FROM trains WHERE is_active = 1")
        active_trains = cursor.fetchone()["count"]

        # Total stations
        cursor.execute("SELECT COUNT(*) as count FROM stations")
        total_stations = cursor.fetchone()["count"]

        # Recent bookings (last 20)
        cursor.execute("""
            SELECT b.TicketID, b.BookingDate, b.SeatStatus, b.pnr_number,
                   p.FullName, t.TrainName,
                   r.SourceStation, r.DestinationStation,
                   pay.Amount, pay.Method
            FROM bookings b
            JOIN passengers p ON b.PassengerID = p.PassengerID
            JOIN schedules s ON b.ScheduleID = s.ScheduleID
            JOIN trains t ON s.TrainNumber = t.TrainNumber
            JOIN routes r ON s.RouteID = r.RouteID
            LEFT JOIN payments pay ON b.TicketID = pay.TicketID
            ORDER BY b.TicketID DESC
            LIMIT 20
        """)
        recent_bookings = cursor.fetchall()

        # Revenue by payment method
        cursor.execute("""
            SELECT Method, COUNT(*) as count, SUM(Amount) as total
            FROM payments
            WHERE payment_status = 'Completed'
            GROUP BY Method
        """)
        payment_methods = cursor.fetchall()

        # Daily Revenue (Last 7 Days)
        cursor.execute("""
            SELECT substr(PaymentDate, 1, 10) as date, SUM(Amount) as daily_revenue
            FROM payments
            WHERE payment_status = 'Completed' AND PaymentDate IS NOT NULL
            GROUP BY substr(PaymentDate, 1, 10)
            ORDER BY date DESC
            LIMIT 7
        """)
        revenue_trend = cursor.fetchall()
        # reverse to chronological order
        revenue_trend.reverse()

        # Calculate total revenue correctly from all completed payments
        cursor.execute("""
            SELECT COALESCE(SUM(Amount), 0) as total_revenue
            FROM payments WHERE payment_status = 'Completed'
        """)
        total_rev = cursor.fetchone()["total_revenue"]

        # Get pending payments
        cursor.execute("""
            SELECT COALESCE(SUM(Amount), 0) as pending
            FROM payments WHERE payment_status = 'Pending'
        """)
        pending_payments = cursor.fetchone()["pending"]

        # Get refund totals
        cursor.execute("""
            SELECT COALESCE(SUM(RefundAmount), 0) as total_refunds
            FROM refunds
        """)
        total_refunds = cursor.fetchone()["total_refunds"]

        stats = {
            "total_revenue": float(total_rev or 0),
            "pending_payments": float(pending_payments or 0),
            "total_refunds": float(total_refunds or 0),
            "total_bookings": total_bookings,
            "confirmed_bookings": confirmed_bookings,
            "cancelled_bookings": cancelled_bookings,
            "total_users": total_users,
            "active_trains": active_trains,
            "total_stations": total_stations,
        }

        # Need simple arrays for frontend charts
        chart_data = {
            "revenue": {
                "labels": [r["date"] for r in revenue_trend],
                "data": [float(r["daily_revenue"]) for r in revenue_trend],
            },
            "bookings": {
                "labels": ["Confirmed", "Cancelled"],
                "data": [confirmed_bookings, cancelled_bookings],
            },
            "payments": {
                "labels": [p["Method"] for p in payment_methods],
                "data": [p["count"] for p in payment_methods],
            },
        }

        return render_template(
            "admin_dashboard.html",
            stats=stats,
            chart_data=chart_data,
            recent_bookings=recent_bookings,
            payment_methods=payment_methods,
        )
    finally:
        cursor.close()
        conn.close()


# ============================================
# ROUTE: Admin - Manage Trains
# ============================================
@app.route("/admin/trains")
@admin_required
def admin_trains():
    """Manage trains"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute("""
            SELECT t.TrainNumber, t.TrainName, t.TotalSeats, t.is_active,
                   (SELECT COUNT(*) FROM schedules s WHERE s.TrainNumber = t.TrainNumber) as schedule_count
            FROM trains t
            ORDER BY t.TrainNumber
        """)
        trains = cursor.fetchall()
        return render_template("admin_trains.html", trains=trains)
    finally:
        cursor.close()
        conn.close()


@app.route("/admin/trains/add", methods=["POST"])
@admin_required
def admin_add_train():
    """Add new train"""
    train_number = request.form.get("train_number", "").strip()
    train_name = request.form.get("train_name", "").strip()
    total_seats = request.form.get("total_seats", 0, type=int)

    if not train_number or not train_name:
        flash("Train number and name are required", "danger")
        return redirect(url_for("admin_trains"))

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute(
            """
            INSERT INTO trains (TrainNumber, TrainName, TotalSeats, is_active)
            VALUES (%s, %s, %s, 1)
        """,
            (train_number, train_name, total_seats if total_seats else 80),
        )
        conn.commit()
        flash(f"Train {train_number} added successfully", "success")
    except Error as e:
        conn.rollback()
        flash(f"Error adding train: {str(e)}", "danger")
    finally:
        cursor.close()
        conn.close()

    return redirect(url_for("admin_trains"))


@app.route("/admin/trains/<train_number>/toggle")
@admin_required
def admin_toggle_train(train_number):
    """Toggle train active status"""
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute(
            "SELECT is_active FROM trains WHERE TrainNumber = %s", (train_number,)
        )
        train = cursor.fetchone()
        if train:
            new_status = 0 if train["is_active"] else 1
            cursor.execute(
                "UPDATE trains SET is_active = %s WHERE TrainNumber = %s",
                (new_status, train_number),
            )
            conn.commit()
            flash(
                f"Train {train_number} {'deactivated' if new_status == 0 else 'activated'}",
                "success",
            )
        else:
            flash("Train not found", "danger")
    except Error as e:
        conn.rollback()
        flash(f"Error: {str(e)}", "danger")
    finally:
        cursor.close()
        conn.close()

    return redirect(url_for("admin_trains"))


# ============================================
# ROUTE: Admin - Manage Routes
# ============================================
@app.route("/admin/routes")
@admin_required
def admin_routes():
    """Manage routes"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute("""
            SELECT r.RouteID, r.SourceStation, r.DestinationStation, r.Distance,
                   r.estimated_duration_minutes,
                   (SELECT COUNT(*) FROM schedules s WHERE s.RouteID = r.RouteID) as schedule_count
            FROM routes r
            ORDER BY r.SourceStation, r.DestinationStation
        """)
        routes = cursor.fetchall()

        cursor.execute(
            "SELECT station_id, station_name FROM stations ORDER BY station_name"
        )
        stations = cursor.fetchall()

        return render_template("admin_routes.html", routes=routes, stations=stations)
    finally:
        cursor.close()
        conn.close()


@app.route("/admin/routes/add", methods=["POST"])
@admin_required
def admin_add_route():
    """Add new route"""
    source = request.form.get("source_station", "").strip()
    destination = request.form.get("destination_station", "").strip()
    distance = request.form.get("distance", 0, type=int)
    duration = request.form.get("duration", 0, type=int)

    if not source or not destination:
        flash("Source and destination stations are required", "danger")
        return redirect(url_for("admin_routes"))

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute(
            """
            INSERT INTO routes (SourceStation, DestinationStation, Distance, estimated_duration_minutes)
            VALUES (%s, %s, %s, %s)
        """,
            (source, destination, distance, duration),
        )
        conn.commit()
        flash(f"Route {source} -> {destination} added successfully", "success")
    except Error as e:
        conn.rollback()
        flash(f"Error adding route: {str(e)}", "danger")
    finally:
        cursor.close()
        conn.close()

    return redirect(url_for("admin_routes"))


# ============================================
# ROUTE: Admin - Manage Schedules
# ============================================
@app.route("/admin/schedules")
@admin_required
def admin_schedules():
    """Manage schedules"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute("""
            SELECT s.ScheduleID, s.TrainNumber, r.SourceStation, r.DestinationStation,
                   s.DepartureTime, s.ArrivalTime, s.off_day, s.is_active
            FROM schedules s
            JOIN routes r ON s.RouteID = r.RouteID
            ORDER BY s.DepartureTime
        """)
        schedules = cursor.fetchall()

        cursor.execute(
            "SELECT TrainNumber, TrainName FROM trains WHERE is_active = 1 ORDER BY TrainNumber"
        )
        trains = cursor.fetchall()

        cursor.execute(
            "SELECT RouteID, SourceStation, DestinationStation FROM routes ORDER BY SourceStation"
        )
        routes = cursor.fetchall()

        return render_template(
            "admin_schedules.html", schedules=schedules, trains=trains, routes=routes
        )
    finally:
        cursor.close()
        conn.close()


@app.route("/admin/schedules/add", methods=["POST"])
@admin_required
def admin_add_schedule():
    """Add new schedule"""
    train_number = request.form.get("train_number", "").strip()
    route_id = request.form.get("route_id", 0, type=int)
    departure_time = request.form.get("departure_time", "").strip()
    arrival_time = request.form.get("arrival_time", "").strip()
    off_day = request.form.get("off_day", "").strip()

    if not train_number or not route_id or not departure_time:
        flash("Train, route, and departure time are required", "danger")
        return redirect(url_for("admin_schedules"))

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute(
            """
            INSERT INTO schedules (TrainNumber, RouteID, DepartureTime, ArrivalTime, off_day, is_active)
            VALUES (%s, %s, %s, %s, %s, 1)
        """,
            (
                train_number,
                route_id,
                departure_time,
                arrival_time if arrival_time else None,
                off_day if off_day else None,
            ),
        )
        conn.commit()
        flash("Schedule added successfully", "success")
    except Error as e:
        conn.rollback()
        flash(f"Error adding schedule: {str(e)}", "danger")
    finally:
        cursor.close()
        conn.close()

    return redirect(url_for("admin_schedules"))


@app.route("/admin/schedules/<int:schedule_id>/toggle")
@admin_required
def admin_toggle_schedule(schedule_id):
    """Toggle schedule active status"""
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute(
            "SELECT is_active FROM schedules WHERE ScheduleID = %s", (schedule_id,)
        )
        schedule = cursor.fetchone()
        if schedule:
            new_status = 0 if schedule["is_active"] else 1
            cursor.execute(
                "UPDATE schedules SET is_active = %s WHERE ScheduleID = %s",
                (new_status, schedule_id),
            )
            conn.commit()
            flash(
                f"Schedule {'deactivated' if new_status == 0 else 'activated'}",
                "success",
            )
        else:
            flash("Schedule not found", "danger")
    except Error as e:
        conn.rollback()
        flash(f"Error: {str(e)}", "danger")
    finally:
        cursor.close()
        conn.close()

    return redirect(url_for("admin_schedules"))


# ============================================
# ROUTE: Admin - Search
# ============================================
@app.route("/admin/search", methods=["GET", "POST"])
@admin_required
def admin_search():
    """Search bookings and passengers"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)

    results = {"bookings": [], "passengers": [], "users": []}
    search_term = ""

    if request.method == "POST":
        search_term = request.form.get("search", "").strip()
        if search_term:
            try:
                # Search bookings by PNR or passenger name
                cursor.execute(
                    """
                    SELECT b.TicketID, b.pnr_number, p.FullName, t.TrainName,
                           r.SourceStation, r.DestinationStation, b.SeatStatus, pay.Amount
                    FROM bookings b
                    JOIN passengers p ON b.PassengerID = p.PassengerID
                    JOIN schedules s ON b.ScheduleID = s.ScheduleID
                    JOIN trains t ON s.TrainNumber = t.TrainNumber
                    JOIN routes r ON s.RouteID = r.RouteID
                    LEFT JOIN payments pay ON b.TicketID = pay.TicketID
                    WHERE b.pnr_number LIKE %s OR p.FullName LIKE %s
                    ORDER BY b.TicketID DESC
                    LIMIT 50
                """,
                    (f"%{search_term}%", f"%{search_term}%"),
                )
                results["bookings"] = cursor.fetchall()

                # Search passengers
                cursor.execute(
                    """
                    SELECT p.PassengerID, p.FullName, p.PassportNumber, p.Gender, u.Username
                    FROM passengers p
                    JOIN users u ON p.UserID = u.UserID
                    WHERE p.FullName LIKE %s OR p.PassportNumber LIKE %s
                    LIMIT 20
                """,
                    (f"%{search_term}%", f"%{search_term}%"),
                )
                results["passengers"] = cursor.fetchall()

                # Search users
                cursor.execute(
                    """
                    SELECT UserID, Username, FullName, Email, Role
                    FROM users
                    WHERE Username LIKE %s OR FullName LIKE %s OR Email LIKE %s
                    LIMIT 20
                """,
                    (f"%{search_term}%", f"%{search_term}%", f"%{search_term}%"),
                )
                results["users"] = cursor.fetchall()

            except Error as e:
                flash(f"Search error: {str(e)}", "danger")
    cursor.close()
    conn.close()

    return render_template(
        "admin_search.html", results=results, search_term=search_term
    )


# ============================================
# ROUTE: Admin - Cancellations & Refunds
# ============================================
@app.route("/admin/cancellations")
@admin_required
def admin_cancellations():
    """View cancellations and refunds"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute("""
            SELECT c.CancellationID, c.TicketID, c.CancellationDate, c.Reason,
                   r.RefundAmount, r.Status, b.pnr_number, p.FullName
            FROM cancellations c
            JOIN refunds r ON c.CancellationID = r.CancellationID
            JOIN bookings b ON c.TicketID = b.TicketID
            JOIN passengers p ON b.PassengerID = p.PassengerID
            ORDER BY c.CancellationDate DESC
            LIMIT 50
        """)
        cancellations = cursor.fetchall()
        return render_template("admin_cancellations.html", cancellations=cancellations)
    finally:
        cursor.close()
        conn.close()


# ============================================
# ROUTE: Admin - Reports/Analytics
# ============================================
@app.route("/admin/reports")
@admin_required
def admin_reports():
    """View detailed analytics and reports"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        # Popular routes
        cursor.execute("""
            SELECT r.SourceStation, r.DestinationStation, COUNT(*) as booking_count,
                   SUM(pay.Amount) as total_revenue
            FROM bookings b
            JOIN schedules s ON b.ScheduleID = s.ScheduleID
            JOIN routes r ON s.RouteID = r.RouteID
            LEFT JOIN payments pay ON b.TicketID = pay.TicketID AND pay.payment_status = 'Completed'
            WHERE b.SeatStatus = 'Confirmed'
            GROUP BY r.RouteID
            ORDER BY booking_count DESC
            LIMIT 10
        """)
        popular_routes = cursor.fetchall()

        # Train performance
        cursor.execute("""
            SELECT t.TrainNumber, t.TrainName, t.TotalSeats,
                   COUNT(b.TicketID) as total_bookings,
                   SUM(CASE WHEN b.SeatStatus = 'Confirmed' THEN 1 ELSE 0 END) as confirmed,
                   SUM(pay.Amount) as revenue
            FROM trains t
            LEFT JOIN schedules s ON t.TrainNumber = s.TrainNumber
            LEFT JOIN bookings b ON s.ScheduleID = b.ScheduleID
            LEFT JOIN payments pay ON b.TicketID = pay.TicketID AND pay.payment_status = 'Completed'
            WHERE t.is_active = 1
            GROUP BY t.TrainNumber
            ORDER BY revenue DESC
        """)
        train_performance = cursor.fetchall()

        # User statistics
        cursor.execute("""
            SELECT DATE(RegisterDate) as reg_date, COUNT(*) as new_users
            FROM users
            WHERE RegisterDate IS NOT NULL AND Role = 'Passenger'
            GROUP BY DATE(RegisterDate)
            ORDER BY reg_date DESC
            LIMIT 30
        """)
        user_registration = cursor.fetchall()

        return render_template(
            "admin_reports.html",
            popular_routes=popular_routes,
            train_performance=train_performance,
            user_registration=user_registration,
        )
    finally:
        cursor.close()
        conn.close()


# ============================================
# ROUTE: Book Ticket
# ============================================
@app.route("/book/<int:schedule_id>", methods=["GET", "POST"])
def book_ticket(schedule_id):
    """Handle ticket booking — accessible to both guests and logged-in users"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)

    if request.method == "POST":
        fullname = request.form.get("fullname", "").strip()
        dob = request.form.get("dob", "")
        gender = request.form.get("gender", "")
        passport = request.form.get("passport", "").strip()
        payment_method = request.form.get("payment_method", "")

        if not all([fullname, dob, gender, passport, payment_method]):
            flash("অনুগ্রহ করে সব তথ্য দিন | Please fill all fields", "warning")
            return redirect(url_for("book_ticket", schedule_id=schedule_id))

        try:
            # 1. Get Fare & Train Info
            cursor.execute(
                """
                SELECT f.TotalAmount, s.TrainNumber, f.FareID
                FROM schedules s
                JOIN fares f ON s.RouteID = f.RouteID
                WHERE s.ScheduleID = %s
                LIMIT 1
            """,
                (schedule_id,),
            )
            fare_info = cursor.fetchone()

            if not fare_info:
                flash("সময়সূচী পাওয়া যায়নি | Schedule not found!", "danger")
                return redirect(url_for("index"))

            amount = fare_info["TotalAmount"]

            # 2. Get or create user
            if session.get("user_id"):
                user_id = session["user_id"]
            else:
                # Get or create guest user
                cursor.execute("SELECT UserID FROM users WHERE Username = 'guest_user'")
                user_result = cursor.fetchone()
                if user_result:
                    user_id = user_result["UserID"]
                else:
                    cursor.execute("""
                        INSERT INTO users (Username, PasswordHash, Email, FullName, Role)
                        VALUES ('guest_user', 'guest', 'guest@railway.com', 'Guest User', 'Passenger')
                    """)
                    conn.commit()
                    user_id = cursor.lastrowid

            # 3. Insert Passenger
            cursor.execute(
                """
                INSERT INTO passengers (UserID, PassportNumber, FullName, DateOfBirth, Gender)
                VALUES (%s, %s, %s, %s, %s)
            """,
                (user_id, passport, fullname, dob, gender),
            )
            passenger_id = cursor.lastrowid

            # 4. Generate PNR
            pnr = (
                f"PNR{datetime.now().strftime('%Y%m%d')}{uuid.uuid4().hex[:8].upper()}"
            )

            # 5. Insert Booking
            booking_date = datetime.now()
            cursor.execute(
                """
                INSERT INTO bookings (PassengerID, ScheduleID, BookingDate, SeatStatus, DynamicPricingFactor, pnr_number)
                VALUES (%s, %s, %s, 'Confirmed', 1.00, %s)
            """,
                (passenger_id, schedule_id, booking_date, pnr),
            )
            ticket_id = cursor.lastrowid

            # 6. Insert Payment (Pending for card/mobile, completed for cash)
            if payment_method in (
                "Credit Card",
                "Debit Card",
                "bKash",
                "Nagad",
                "Rocket",
            ):
                payment_status = "Pending"
            else:
                payment_status = "Completed"

            txn_id = f"TXN{datetime.now().strftime('%Y%m%d%H%M%S')}{uuid.uuid4().hex[:6].upper()}"

            cursor.execute(
                """
                INSERT INTO payments (TicketID, Amount, PaymentDate, Method, payment_status, transaction_id)
                VALUES (%s, %s, %s, %s, %s, %s)
            """,
                (
                    ticket_id,
                    amount,
                    booking_date,
                    payment_method,
                    payment_status,
                    txn_id,
                ),
            )

            conn.commit()

            if payment_status == "Pending":
                # Redirect to payment page
                return redirect(url_for("payment_page", ticket_id=ticket_id))
            else:
                flash(f"টিকেট বুক হয়েছে! টিকেট নং: {ticket_id} | PNR: {pnr}", "success")
                return redirect(url_for("ticket_success", ticket_id=ticket_id))

        except Error as e:
            conn.rollback()
            flash(f"বুকিং ব্যর্থ | Booking Failed: {str(e)}", "danger")
            return redirect(url_for("book_ticket", schedule_id=schedule_id))
        finally:
            cursor.close()
            conn.close()

    # GET Request: Show Booking Form
    try:
        cursor.execute(
            """
            SELECT t.TrainName, t.TrainNumber, r.SourceStation, r.DestinationStation,
                   s.DepartureTime, s.ArrivalTime, f.TotalAmount, f.ClassType
            FROM schedules s
            JOIN trains t ON s.TrainNumber = t.TrainNumber
            JOIN routes r ON s.RouteID = r.RouteID
            JOIN fares f ON r.RouteID = f.RouteID
            WHERE s.ScheduleID = %s
            LIMIT 1
        """,
            (schedule_id,),
        )
        schedule_details = cursor.fetchone()

        if not schedule_details:
            flash("সময়সূচী পাওয়া যায়নি | Schedule not found!", "danger")
            return redirect(url_for("index"))

        return render_template(
            "book.html", schedule=schedule_details, schedule_id=schedule_id
        )
    finally:
        cursor.close()
        conn.close()


# ============================================
# ROUTE: Payment Page
# ============================================
@app.route("/payment/<int:ticket_id>", methods=["GET", "POST"])
def payment_page(ticket_id):
    """Mock payment gateway page"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)

    try:
        # Get payment info
        cursor.execute(
            """
            SELECT p.PaymentID, p.Amount, p.Method, p.payment_status, p.transaction_id,
                   b.TicketID, b.pnr_number,
                   t.TrainName, r.SourceStation, r.DestinationStation,
                   ps.FullName
            FROM payments p
            JOIN bookings b ON p.TicketID = b.TicketID
            JOIN passengers ps ON b.PassengerID = ps.PassengerID
            JOIN schedules s ON b.ScheduleID = s.ScheduleID
            JOIN trains t ON s.TrainNumber = t.TrainNumber
            JOIN routes r ON s.RouteID = r.RouteID
            WHERE b.TicketID = %s
        """,
            (ticket_id,),
        )
        payment_info = cursor.fetchone()

        if not payment_info:
            flash("পেমেন্ট তথ্য পাওয়া যায়নি | Payment info not found", "danger")
            return redirect(url_for("index"))

        if payment_info["payment_status"] == "Completed":
            return redirect(url_for("ticket_success", ticket_id=ticket_id))

        if request.method == "POST":
            method = payment_info["Method"]
            is_valid = False

            if method in ("Credit Card", "Debit Card"):
                card_number = (
                    request.form.get("card_number", "")
                    .replace(" ", "")
                    .replace("-", "")
                )
                expiry = request.form.get("expiry", "")
                cvv = request.form.get("cvv", "")

                # Luhn algorithm validation
                if len(card_number) >= 13 and card_number.isdigit():
                    digits = [int(d) for d in card_number]
                    odd_digits = digits[-1::-2]
                    even_digits = digits[-2::-2]
                    checksum = sum(odd_digits)
                    for d in even_digits:
                        d *= 2
                        if d > 9:
                            d -= 9
                        checksum += d
                    is_valid = checksum % 10 == 0

                if not is_valid:
                    # Accept test card numbers
                    test_cards = [
                        "4111111111111111",
                        "5500000000000004",
                        "4242424242424242",
                    ]
                    if card_number in test_cards:
                        is_valid = True

                if not expiry or not cvv or len(cvv) < 3:
                    is_valid = False

            elif method in ("bKash", "Nagad", "Rocket"):
                mobile_number = request.form.get("mobile_number", "").strip()
                pin = request.form.get("pin", "").strip()
                # 11-digit BD mobile number
                if (
                    mobile_number
                    and len(mobile_number) == 11
                    and mobile_number.isdigit()
                ):
                    if mobile_number.startswith(
                        ("013", "014", "015", "016", "017", "018", "019")
                    ):
                        if pin and len(pin) >= 4:
                            is_valid = True

            if not is_valid:
                flash(
                    "ভুল পেমেন্ট তথ্য | Invalid payment details. Please check and try again.",
                    "danger",
                )
                return render_template("payment.html", payment=payment_info)

            # Process payment (mock success)
            cursor.execute(
                """
                UPDATE payments SET payment_status = 'Completed'
                WHERE TicketID = %s
            """,
                (ticket_id,),
            )
            conn.commit()

            return redirect(url_for("ticket_success", ticket_id=ticket_id))

        return render_template("payment.html", payment=payment_info)
    finally:
        cursor.close()
        conn.close()


# ============================================
# ROUTE: Ticket Success
# ============================================
@app.route("/ticket/success/<int:ticket_id>")
def ticket_success(ticket_id):
    """Ticket booking success page"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)

    try:
        cursor.execute(
            """
            SELECT b.TicketID, b.BookingDate, b.SeatStatus, b.pnr_number,
                   p.FullName, p.Gender,
                   t.TrainName, t.TrainNumber,
                   r.SourceStation, r.DestinationStation,
                   s.DepartureTime, s.ArrivalTime,
                   pay.Amount, pay.Method, pay.payment_status, pay.transaction_id
            FROM bookings b
            JOIN passengers p ON b.PassengerID = p.PassengerID
            JOIN schedules s ON b.ScheduleID = s.ScheduleID
            JOIN trains t ON s.TrainNumber = t.TrainNumber
            JOIN routes r ON s.RouteID = r.RouteID
            LEFT JOIN payments pay ON b.TicketID = pay.TicketID
            WHERE b.TicketID = %s
        """,
            (ticket_id,),
        )
        ticket = cursor.fetchone()

        if not ticket:
            flash("টিকেট পাওয়া যায়নি | Ticket not found", "danger")
            return redirect(url_for("index"))

        return render_template("ticket_success.html", ticket=ticket)
    finally:
        cursor.close()
        conn.close()


# ============================================
# ROUTE: Download Ticket PDF
# ============================================
@app.route("/ticket/<int:ticket_id>/download")
def download_ticket(ticket_id):
    """Generate and download ticket PDF"""
    if not HAS_REPORTLAB:
        flash(
            "PDF generation is not available. Install reportlab: pip install reportlab",
            "warning",
        )
        return redirect(url_for("view_bookings"))

    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)

    try:
        cursor.execute(
            """
            SELECT b.TicketID, b.BookingDate, b.SeatStatus, b.pnr_number,
                   p.FullName, p.Gender, p.PassportNumber,
                   t.TrainName, t.TrainNumber,
                   r.SourceStation, r.DestinationStation,
                   s.DepartureTime, s.ArrivalTime,
                   pay.Amount, pay.Method, pay.transaction_id
            FROM bookings b
            JOIN passengers p ON b.PassengerID = p.PassengerID
            JOIN schedules s ON b.ScheduleID = s.ScheduleID
            JOIN trains t ON s.TrainNumber = t.TrainNumber
            JOIN routes r ON s.RouteID = r.RouteID
            LEFT JOIN payments pay ON b.TicketID = pay.TicketID
            WHERE b.TicketID = %s
        """,
            (ticket_id,),
        )
        ticket = cursor.fetchone()

        if not ticket:
            flash("টিকেট পাওয়া যায়নি | Ticket not found", "danger")
            return redirect(url_for("view_bookings"))

        # Generate PDF
        buffer = io.BytesIO()
        c = pdf_canvas.Canvas(buffer, pagesize=A4)
        width, height = A4

        # Header background
        c.setFillColor(HexColor("#1a4d3e"))
        c.rect(0, height - 120, width, 120, fill=True, stroke=False)

        # Header text
        c.setFillColor(HexColor("#ffffff"))
        c.setFont("Helvetica-Bold", 24)
        c.drawCentredString(width / 2, height - 50, "Bangladesh Railway")
        c.setFont("Helvetica", 12)
        c.drawCentredString(width / 2, height - 70, "E-Ticket / Electronic Ticket")
        c.setFont("Helvetica-Bold", 14)
        c.drawCentredString(
            width / 2, height - 100, f"PNR: {ticket['pnr_number'] or 'N/A'}"
        )

        # Ticket info
        y = height - 160
        c.setFillColor(HexColor("#1a2f2a"))
        c.setFont("Helvetica-Bold", 14)
        c.drawString(50, y, "Ticket Details")
        y -= 5
        c.setStrokeColor(HexColor("#f5a623"))
        c.setLineWidth(2)
        c.line(50, y, width - 50, y)

        y -= 30
        c.setFont("Helvetica", 11)
        info = [
            ("Ticket ID", str(ticket["TicketID"])),
            ("Passenger Name", ticket["FullName"]),
            ("Gender", ticket["Gender"] or "N/A"),
            ("NID/Passport", ticket["PassportNumber"] or "N/A"),
            ("Train", f"{ticket['TrainName']} ({ticket['TrainNumber']})"),
            ("From", ticket["SourceStation"]),
            ("To", ticket["DestinationStation"]),
            ("Departure", str(ticket["DepartureTime"])),
            ("Arrival", str(ticket["ArrivalTime"])),
            ("Booking Date", str(ticket["BookingDate"])),
            ("Payment Method", ticket["Method"] or "N/A"),
            ("Transaction ID", ticket["transaction_id"] or "N/A"),
            ("Status", ticket["SeatStatus"]),
        ]

        for label_text, value_text in info:
            c.setFont("Helvetica-Bold", 10)
            c.setFillColor(HexColor("#666666"))
            c.drawString(50, y, f"{label_text}:")
            c.setFont("Helvetica", 10)
            c.setFillColor(HexColor("#1a2f2a"))
            c.drawString(200, y, str(value_text))
            y -= 22

        # Amount
        y -= 10
        c.setStrokeColor(HexColor("#1a4d3e"))
        c.setLineWidth(1)
        c.line(50, y, width - 50, y)
        y -= 25
        c.setFont("Helvetica-Bold", 16)
        c.setFillColor(HexColor("#1a4d3e"))
        amount_display = float(ticket["Amount"]) if ticket["Amount"] else 0
        c.drawString(50, y, f"Total Fare: BDT {amount_display:.2f}")

        # Footer
        y -= 50
        c.setFont("Helvetica", 8)
        c.setFillColor(HexColor("#999999"))
        c.drawCentredString(
            width / 2, y, "This is a computer-generated ticket. No signature required."
        )
        c.drawCentredString(
            width / 2,
            y - 12,
            "Bangladesh Railway Reservation System | DBMS Course Project 2026",
        )

        c.save()
        buffer.seek(0)

        return send_file(
            buffer,
            as_attachment=True,
            download_name=f"ticket_{ticket_id}_{ticket['pnr_number'] or 'NA'}.pdf",
            mimetype="application/pdf",
        )
    finally:
        cursor.close()
        conn.close()


# ============================================
# ROUTE: View All Bookings
# ============================================
@app.route("/bookings")
@login_required
def view_bookings():
    """View user's bookings"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)

    try:
        user_id = session.get("user_id")
        is_admin = session.get("role") == "Admin"

        if is_admin:
            # Admin sees all bookings
            query = """
                SELECT b.TicketID, b.pnr_number, COALESCE(p.FullName, '') as FullName, 
                       COALESCE(t.TrainName, '') as TrainName,
                       COALESCE(r.SourceStation, '') as SourceStation, 
                       COALESCE(r.DestinationStation, '') as DestinationStation,
                       b.BookingDate, b.SeatStatus, pay.Amount, pay.Method, pay.payment_status
                FROM bookings b
                LEFT JOIN passengers p ON b.PassengerID = p.PassengerID
                LEFT JOIN schedules s ON b.ScheduleID = s.ScheduleID
                LEFT JOIN trains t ON s.TrainNumber = t.TrainNumber
                LEFT JOIN routes r ON s.RouteID = r.RouteID
                LEFT JOIN payments pay ON b.TicketID = pay.TicketID
                ORDER BY b.TicketID DESC
                LIMIT 200
            """
            cursor.execute(query)
        else:
            # Find passenger IDs for this user
            cursor.execute(
                "SELECT PassengerID FROM passengers WHERE UserID = %s",
                (user_id,),
            )
            passenger_ids = [row["PassengerID"] for row in cursor.fetchall()]

            if not passenger_ids:
                return render_template("bookings.html", bookings=[])

            placeholders = ",".join(["%s"] * len(passenger_ids))
            cursor.execute(
                f"""
                SELECT b.TicketID, b.pnr_number, COALESCE(p.FullName, '') as FullName, 
                       COALESCE(t.TrainName, '') as TrainName,
                       COALESCE(r.SourceStation, '') as SourceStation, 
                       COALESCE(r.DestinationStation, '') as DestinationStation,
                       b.BookingDate, b.SeatStatus, pay.Amount, pay.Method, pay.payment_status
                FROM bookings b
                LEFT JOIN passengers p ON b.PassengerID = p.PassengerID
                LEFT JOIN schedules s ON b.ScheduleID = s.ScheduleID
                LEFT JOIN trains t ON s.TrainNumber = t.TrainNumber
                LEFT JOIN routes r ON s.RouteID = r.RouteID
                LEFT JOIN payments pay ON b.TicketID = pay.TicketID
                WHERE b.PassengerID IN ({placeholders})
                ORDER BY b.TicketID DESC
                LIMIT 200
                """,
                tuple(passenger_ids),
            )

        bookings = cursor.fetchall()
        return render_template("bookings.html", bookings=bookings)
    except Exception as e:
        print(f"View bookings error: {e}")
        return render_template("bookings.html", bookings=[])
    finally:
        cursor.close()
        conn.close()


# ============================================
# ROUTE: Cancel Ticket
# ============================================
@app.route("/cancel/<int:ticket_id>")
@login_required
def cancel_ticket(ticket_id):
    """Handle cancellation and refund"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)

    try:
        cursor.execute(
            "SELECT SeatStatus FROM bookings WHERE TicketID = %s", (ticket_id,)
        )
        status_result = cursor.fetchone()

        if not status_result:
            flash("টিকেট পাওয়া যায়নি | Ticket not found!", "danger")
            return redirect(url_for("view_bookings"))

        if status_result["SeatStatus"] == "Cancelled":
            flash("টিকেট ইতিমধ্যে বাতিল | Ticket already cancelled!", "warning")
            return redirect(url_for("view_bookings"))

        cursor.execute("SELECT Amount FROM payments WHERE TicketID = %s", (ticket_id,))
        payment_result = cursor.fetchone()

        if not payment_result:
            flash("পেমেন্ট রেকর্ড পাওয়া যায়নি | Payment record not found!", "danger")
            return redirect(url_for("view_bookings"))

        amount = payment_result["Amount"]

        # Insert Cancellation
        cursor.execute(
            """
            INSERT INTO cancellations (TicketID, CancellationDate, Reason)
            VALUES (%s, %s, %s)
        """,
            (ticket_id, datetime.now(), "User Request"),
        )
        cancellation_id = cursor.lastrowid

        # 90% refund
        if isinstance(amount, Decimal):
            refund_amount = amount * Decimal("0.90")
        else:
            refund_amount = float(amount) * 0.90

        cursor.execute(
            """
            INSERT INTO refunds (CancellationID, RefundAmount, Status)
            VALUES (%s, %s, %s)
        """,
            (cancellation_id, refund_amount, "Processed"),
        )

        # Update status
        cursor.execute(
            "UPDATE bookings SET SeatStatus = 'Cancelled' WHERE TicketID = %s",
            (ticket_id,),
        )

        conn.commit()
        flash(
            f"টিকেট বাতিল! ৳{float(refund_amount):.2f} ফেরত দেওয়া হবে | Ticket cancelled! Refund: ৳{float(refund_amount):.2f}",
            "success",
        )

    except Error as e:
        conn.rollback()
        flash(f"বাতিল ত্রুটি | Cancellation Error: {str(e)}", "danger")
    finally:
        cursor.close()
        conn.close()

    return redirect(url_for("view_bookings"))


# ============================================
# ROUTE: About
# ============================================
@app.route("/about")
def about():
    """About Us page"""
    return render_template("about.html")


# ============================================
# ROUTE: Stations
# ============================================
@app.route("/stations")
def view_stations():
    """View all stations"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)

    try:
        cursor.execute("""
            SELECT station_id, station_code, station_name, station_name_bn,
                   division, city, is_junction
            FROM stations
            ORDER BY division, station_name
        """)
        stations = cursor.fetchall()
        return render_template("stations.html", stations=stations)
    finally:
        cursor.close()
        conn.close()


# ============================================
# ROUTE: Coaches
# ============================================
@app.route("/coaches/<train_number>")
def view_coaches(train_number):
    """View coaches for a train"""
    conn = get_db_connection()
    if not conn:
        return "Database Connection Failed", 500

    cursor = conn.cursor(dictionary=True, buffered=True)

    try:
        cursor.execute(
            "SELECT TrainNumber, TrainName, TotalSeats FROM trains WHERE TrainNumber = %s",
            (train_number,),
        )
        train = cursor.fetchone()

        if not train:
            flash("ট্রেন পাওয়া যায়নি | Train not found!", "danger")
            return redirect(url_for("index"))

        cursor.execute(
            """
            SELECT c.coach_id, c.coach_number, c.class_code, c.class_name,
                   c.total_seats, c.coach_position, c.has_ac,
                   COUNT(s.seat_id) as actual_seats
            FROM coaches c
            LEFT JOIN seats s ON c.coach_id = s.coach_id
            WHERE c.TrainNumber = %s
            GROUP BY c.coach_id
            ORDER BY c.coach_position
        """,
            (train_number,),
        )
        coaches = cursor.fetchall()

        return render_template("coaches.html", train=train, coaches=coaches)
    finally:
        cursor.close()
        conn.close()


# ============================================
# API ENDPOINTS (with cache headers)
# ============================================
@app.route("/api/stations")
@csrf.exempt
def api_stations():
    """API: Get all stations (cached 1 hour)"""
    conn = get_db_connection()
    if not conn:
        return jsonify({"error": "Database Connection Failed"}), 500

    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute("""
            SELECT station_id, station_code, station_name, station_name_bn,
                   division, city, is_junction
            FROM stations ORDER BY station_name
        """)
        stations = cursor.fetchall()
        return cached_response({"stations": stations}, max_age=3600)
    finally:
        cursor.close()
        conn.close()


@app.route("/api/fares/<int:route_id>")
@csrf.exempt
def api_fares(route_id):
    """API: Get fares for a route (cached 30 mins)"""
    conn = get_db_connection()
    if not conn:
        return jsonify({"error": "Database Connection Failed"}), 500

    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute(
            """
            SELECT f.ClassType, f.TotalAmount, r.SourceStation, r.DestinationStation, r.Distance
            FROM fares f
            JOIN routes r ON f.RouteID = r.RouteID
            WHERE f.RouteID = %s
            ORDER BY f.TotalAmount DESC
        """,
            (route_id,),
        )
        fares = cursor.fetchall()

        for fare in fares:
            if isinstance(fare["TotalAmount"], Decimal):
                fare["TotalAmount"] = float(fare["TotalAmount"])
            if isinstance(fare.get("Distance"), Decimal):
                fare["Distance"] = float(fare["Distance"])

        return cached_response({"fares": fares, "route_id": route_id}, max_age=1800)
    finally:
        cursor.close()
        conn.close()


@app.route("/api/coaches/<train_number>")
@csrf.exempt
def api_coaches(train_number):
    """API: Get coaches for a train (cached 30 mins)"""
    conn = get_db_connection()
    if not conn:
        return jsonify({"error": "Database Connection Failed"}), 500

    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute(
            """
            SELECT c.coach_id, c.coach_number, c.class_code, c.class_name,
                   c.total_seats, c.has_ac,
                   COUNT(s.seat_id) as actual_seats
            FROM coaches c
            LEFT JOIN seats s ON c.coach_id = s.coach_id
            WHERE c.TrainNumber = %s
            GROUP BY c.coach_id
            ORDER BY c.coach_position
        """,
            (train_number,),
        )
        coaches = cursor.fetchall()
        return cached_response(
            {"coaches": coaches, "train_number": train_number}, max_age=1800
        )
    finally:
        cursor.close()
        conn.close()


@app.route("/api/schedules")
@csrf.exempt
def api_schedules():
    """API: Get schedules (cached 5 mins)"""
    conn = get_db_connection()
    if not conn:
        return jsonify({"error": "Database Connection Failed"}), 500

    cursor = conn.cursor(dictionary=True, buffered=True)
    try:
        cursor.execute("""
            SELECT s.ScheduleID, t.TrainName, t.TrainNumber,
                   r.SourceStation, r.DestinationStation,
                   s.DepartureTime, s.ArrivalTime, s.off_day
            FROM schedules s
            JOIN trains t ON s.TrainNumber = t.TrainNumber
            JOIN routes r ON s.RouteID = r.RouteID
            WHERE s.is_active = TRUE
            ORDER BY s.DepartureTime ASC
        """)
        schedules = cursor.fetchall()

        for s in schedules:
            if s["DepartureTime"]:
                s["DepartureTime"] = s["DepartureTime"].isoformat()
            if s["ArrivalTime"]:
                s["ArrivalTime"] = s["ArrivalTime"].isoformat()

        return cached_response({"schedules": schedules}, max_age=300)
    finally:
        cursor.close()
        conn.close()


# ============================================
# RUN APPLICATION
# ============================================
if __name__ == "__main__":
    app.run(debug=True, port=5000)
