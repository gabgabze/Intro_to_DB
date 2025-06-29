-- create db
CREATE DATABASE alx_book_store;

-- switch to the database
USE alx_book_store;
-- Create an Employees table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(130),
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY(author_id) REFERENCES Authors(author_id)
);

-- create Author table
CREATE TABLE Authors(
author_id INT PRIMARY KEY,
author_name VARCHAR(215)
);

-- Create Customer table
CREATE TABLE Customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);

-- create orders
CREATE TABLE Orders(
order_id INT PRIMARY KEY,
FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
order_date DATE
);

-- create order details
CREATE TABLE Order_Details(
orderdetailid INT PRIMARY KEY,
FOREIGN KEY(order_id) REFERENCES  Orders(order_id),
FOREIGN KEY(BookID) REFERENCES  Books(BookID),
quantity DOUBLE
);

