CREATE DATABASE PracticeEX2;
USE PracticeEX2;
CREATE TABLE Onlineorders(
customer_name varchar(50),
product_name varchar(50),
category varchar(50),
order_amount decimal (10,2),
order_quantity int,
order_date date 
);

INSERT INTO Onlineorders (customer_name, product_name, category, order_amount, order_quantity, order_date) values
('Alice', 'T-shirt', 'Clothing', 500.00, 2, '2024-10-01'),
('Bob', 'Laptop', 'Electronics', 55000.00, 1, '2024-10-02'),
('Charlie', 'Shoes', 'Footware', 2000.00, 1, '2024-10-03'),
('Alice', 'Shoes', 'Footware', 1800.00, 1, '2024-10-04' ),
('Eve', 'Headphones', 'Eletronics', 3000.00, 2, '2024-10-04' ),
('Bob', 'T-shirt', 'Clothing', 500.00, 1, '2024-10-05'),
('Charlie', 'Mouse', 'Electronics', 1500.00, 3, '2024-10-06'); 

SELECT * FROM Onlineorders;

-- the minimum and maximum order_amount in the table.
SELECT 
    MIN(order_amount) AS min_order_amount,
    MAX(order_amount) AS max_order_amount
FROM Onlineorders;

-- total number of orders made.
SELECT COUNT(*) AS total_orders FROM Onlineorders;

-- the total revenue generated (order_amount) from all orders.
SELECT SUM(order_amount) AS total_revenue FROM Onlineorders;

-- the average order_amount per order
SELECT AVG(order_amount) AS avarage from Onlineorders;

-- total number of units sold (order_quantity).
SELECT SUM(order_quantity) AS total_uits_sold FROM Onlineorders;

--  total revenue by category.
SELECT category, SUM(order_amount) AS total_revenue
FROM Onlineorders
GROUP BY category;

-- average order_amount by customer_name.
SELECT customer_name , AVG(order_amount) AS avg_order_amount
FROM Onlineorders
GROUP BY customer_name;

-- count how many orders each customer has placed.
SELECT customer_name, COUNT(*) AS placed_orders
FROM Onlineorders
GROUP BY customer_name;

-- List categories where the total quantity sold is more than 3.
SELECT category, SUM(order_quantity) AS total_quantity_sold
FROM Onlineorders
GROUP BY category
HAVING SUM(order_quantity)>3;

-- highest and lowest order_amount per category.
SELECT 
category,
MIN(order_amount) AS min_order_amount,
MAX(order_amount) AS max_order_amount
FROM Onlineorders
GROUP BY category;