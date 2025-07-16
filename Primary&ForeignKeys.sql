CREATE DATABASE KEYSEXAMPLE;
USE KEYSEXAMPLE;

-- Create the "users" table
CREATE TABLE users(
user_id INT PRIMARY KEY auto_increment,
username VARCHAR(50) NOT NULL

);

-- Create the "orders" table with a foreign key referencing "users"
CREATE TABLE orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT ,
product_name VARCHAR(100),
FOREIGN KEY (user_id) REFERENCES users(user_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

-- Insert data into "users"
INSERT INTO users (username) VALUES ('Alice'),('Bob'),('Carol');

-- Insert data into 'orders'
INSERT INTO orders (user_id, product_name) VALUES 
(1, 'LAPTOP'),
(2, 'Smartphone'),
(3, 'Keyboard'),
(1, 'Mouse');

-- join orders with users 
SELECT o.order_id, u.username, o.product_name FROM orders o JOIN users u ON o.user_id= u.user_id;



-- CREATE TABLE users(
-- user_id INT PRIMARY KEY,
-- user_name varchar(50) NOT NULL
-- );

-- CREATE TABLE orders(
-- order_id INT PRIMARY KEY,
-- user_id INT,
-- FOREIGN KEY (user_id) REFERENCES users(user_id)
-- );
