import mysql.connector


try:
    mydb = mysql.connector.connect(
    host = "localhost",
    user = "sqluser",
    password = "password"                                                                           
)
    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as e:
    print(f"error:{e}")

finally:
    if mydb.is_connected():
        mycursor.close()
        mydb.close()
        print("database connection is closed")