CREATE DATABASE groupbysyntax;
USE groupbysyntax;
CREATE TABLE sales(
id INT AUTO_INCREMENT PRIMARY KEY,
employee_name VARCHAR(100),
product VARCHAR(100),
amount DECIMAL(10,2)
);

INSERT INTO sales (employee_name, product, amount) VALUES
("Alice", "Laptop", 1200.00 ),
("Bob", "Laptop", 1150.00 ),
("Alice", "Mouse", 25.00),
("Alice", "Keyboard", 45.00),
("Bob", "Keyboard", 40.00),
("Charlie", "Mouse", 30.00),
("Charlie", "Laptop", 1250.00);

SELECT * FROM sales;

-- Total sales amount by employee 
SELECT employee_name, SUM(amount) AS total_sales FROM sales GROUP BY employee_name;

-- Total sales amount by product
SELECT product, SUM(amount) AS total_sales FROM sales GROUP BY product;