-- Active: 1729287686226@@127.0.0.1@3306@anuel

CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Authors(
author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(125)
);
CREATE TABLE Books(
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(130),
author_id INT,
price DOUBLE,
publication_date DATE,
Foreign Key (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215) NOT NULL UNIQUE,
address TEXT
);
CREATE TABLE Orders(
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
order_date DATE,
Foreign Key (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Details(
order_detailid INT PRIMARY KEY,
order_id INT,
book_id INT,
quantity DOUBLE,
Foreign Key (order_id) REFERENCES Orders(order_id),
Foreign Key (book_id) REFERENCES Books(book_id)
);