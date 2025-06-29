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
        cur = con.cursor()
        # create db if it does not exist
        create_db = f"CREATE DATABASE IF NOT EXISTS alx_book_store;"
        cur.execute(create_db)
        print(f"Database 'alx_book_store' created successfully!")
except Error as e:
    print("Error while connecting to MySQL", e)


# Close connections
con.close()
con.close()
