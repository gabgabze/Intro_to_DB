from os import environ
import mysql
import mysql.connector
from mysql.connector import connect,Error

# connection details
try:
    mydb = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        passwd="Chelsea@123",
        database="alx_book_store"
    )
    """with connect(
            host='127.0.0.1',
            port=3306,
            user='root',
            password='Chelsea@123',
            database="alx_book_store"
    ) as con:"""
    mydb.cursor()
    # create db
    create_db = f"CREATE DATABASE IF NOT EXISTS alx_book_store"
    #mydb.execute(create_db)
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as err:
    print("Error while connecting to MySQL", err)

# Close connections
mydb.close()
