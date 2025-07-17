CREATE DATABASE havingclause;
USE havingclause;
CREATE TABLE sales(
id INT AUTO_INCREMENT PRIMARY KEY,
salesperson VARCHAR(50),
region VARCHAR(50),
amount DECIMAL(10,2)
);

INSERT INTO sales (salesperson, region, amount) VALUES
("Alice", "East", 500),
("Bob", "West", 300),
("Alice", "East", 700),
("Bob", "West", 200),
("Charlie", "East", 400);

SELECT * FROM sales;

-- Find salespeople whose total sales exceed 800
SELECT salesperson, SUM(amount) AS total_sales FROM sales GROUP BY salesperson HAVING total_sales >800;