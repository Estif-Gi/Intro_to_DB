import mysql.connector

def create_database():
    try:
        # Connect to MySQL Server (no database selected yet)
        mydb = mysql.connector.connect(
            host="localhost",
            user="root",      # <-- replace with your MySQL username
            password="Hanna0111@G"   # <-- replace with your MySQL password
        )

        if mydb.is_connected():
            mycursor = mydb.cursor()

            # Create database if it doesn't exist
            mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as e:
        print(f"Error while connecting to MySQL: {e}")

    finally:
        # Always close connection
        if 'mycursor' in locals() and mycursor:
            mycursor.close()
        if 'mydb' in locals() and mydb.is_connected():
            mydb.close()
            print("MySQL connection closed.")

# Run the function
if __name__ == "__main__":
    create_database()
