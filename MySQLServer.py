from os import environ
import mysql.connector
from mysql.connector import connect,Error

# connection details
try:
    with connect(
            host='127.0.0.1',
            port=3306,
            user='root',
            password='Chelsea@123',
            database="alx_book_store"
    ) as con:
        print("Database 'alx_book_store' created successfully!")
except Error as e:
    print("Error while connecting to MySQL", e)


# Close connections
con.close()
con.close()
