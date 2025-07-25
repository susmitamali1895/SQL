CREATE DATABASE Eecommerce;
use Eecommerce;
CREATE TABLE products(
product_id INT,
name varchar(100),
category varchar(100),
price decimal(10,2),
stock int

);

CREATE TABLE orders(
order_id int,
product_id int,
quantity int,
order_date DATE

);

INSERT INTO products (product_id, name , category, price , stock) values 
(1, 'Laptop', 'Electronics', 75000.00, 10),
(2, 'Smartphone', 'Electronics', 25000.00, 20),
(3, 'Desk chair', 'Furniture', 5000.00, 15),
(4, 'Book', 'Books', 500.00, 100),
(5, 'Headphones', 'Electronics', 3000.00, 50);


INSERT INTO orders (order_id, product_id, quantity, order_date) values
(101, 1, 1, '2025-05-01'),
(102, 2, 2, '2025-05-03'),
(103, 3, 1, '2025-05-05'),
(104, 5, 3, '2025-05-07'),
(105, 4, 5 ,'2025-05-10'),
(106, 2, 1, '2025-05-12');


-- MIN & MAX = PRIE RANGE OF PRODUCTS
SELECT MIN(price) AS MinPrice, MAX(price) AS MaxPrice FROM products;

-- COUNT (TOTAL NO OF ORDERS)
SELECT COUNT(*) AS TotalOrders FROM orders; 

-- AVG - AVERAGE OF PRODUCT PRICE 
SELECT AVG(price) AS AveragePrice FROM products; 

-- SUM = TOTAL REVENUE FROM ORDERS
SELECT SUM(p.price * o.quantity) AS TotalRevenue FROM orders o 
JOIN products p ON O.product_id = p.product_id; 

-- IN = orders for specific products
SELECT * FROM orders
WHERE  product_id IN (1,2);

-- BETWEEN = ORDERS WITHIN A DATE RANGE
SELECT * FROM orders
WHERE order_date BETWEEN '25-05-01' and '25-05-10'; 