USE alx_book_store;

-- Active: 1729287686226@@127.0.0.1@3306@anuel

CREATE TABLE IF NOT EXISTS Authors(
author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(125)
);
CREATE TABLE IF NOT EXISTS Books(
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(130),
author_id INT,
price DOUBLE,
publication_date DATE,
FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE IF NOT EXISTS Customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215) NOT NULL UNIQUE,
address TEXT
);
CREATE TABLE IF NOT EXISTS Orders(
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE IF NOT EXISTS Order_Details(
order_detailid INT PRIMARY KEY,
order_id INT,
book_id INT,
quantity DOUBLE,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id)
);