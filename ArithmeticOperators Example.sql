CREATE DATABASE arithmeticoperators;
USE arithmeticoperators;
CREATE TABLE sales(
id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(50),
quantity INT,
price_per_unit DECIMAL(10,2)
);

INSERT INTO sales(product_name, quantity, price_per_unit) VALUES
("Laptop", 5, 750.00),
("Mouse", 20, 15.50),
("Keyboard", 10, 25.00),
("Monitor", 3, 180.75);

SELECT * FROM sales;


-- add a fix tax to the price
SELECT product_name , price_per_unit, price_per_unit + 10 AS price_with_tax FROM sales;

-- substract a discount from the price
SELECT product_name ,price_per_unit, price_per_unit -5 AS price_after_discount FROM sales;

-- calculate total price = quantity * price_per_unit
SELECT product_name , quantity, price_per_unit, quantity* price_per_unit AS total_price FROM sales;

-- check if quantity is even or odd
SELECT product_name, quantity, quantity %2 AS is_odd FROM sales;
