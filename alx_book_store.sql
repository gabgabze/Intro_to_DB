-- create db
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- switch to the database
USE alx_book_store;

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    title VARCHAR(130),
    price DOUBLE,
    publication_date DATE,
    author_id int not null,
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
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE,
    customer_id int not null
);

-- create order details
CREATE TABLE Order_Details(
    order_detail_id INT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    FOREIGN KEY (BookID) REFERENCES Books (BookID),
    quantity      DOUBLE,
    order_id  int not null,
    BookID        int not null
);