-- DATABASE CREATION

CREATE DATABASE Ecomm;
USE Ecomm;

-- TABLES CREATION

CREATE TABLE Customers ( 								                -- Customers
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Orders (									                  -- Orders
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
    order_date DATE NOT NULL
);

CREATE TABLE Order_Items (								              -- Order_Items
	item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    FOREIGN KEY(order_id) REFERENCES Orders(order_id),
    product_name VARCHAR(100) NOT NULL,
    amount INT NOT NULL
);
