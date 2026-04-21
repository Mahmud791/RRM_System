import os
from dotenv import load_dotenv

# Load environment variables from .env
load_dotenv()

from database.db_wrapper import get_db_connection
from werkzeug.security import generate_password_hash

def main():
    print("Connecting to database...")
    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        
        new_pw = "arnab938@"
        hashed_pw = generate_password_hash(new_pw)
        
        print(f"Updating password for admin...")
        cursor.execute("UPDATE users SET PasswordHash = %s WHERE Username = 'admin'", (hashed_pw,))
        conn.commit()
        
        print("Password changed successfully!")
    except Exception as e:
        print(f"Error: {e}")
    finally:
        try:
            cursor.close()
            conn.close()
        except:
            pass

if __name__ == "__main__":
    main()
