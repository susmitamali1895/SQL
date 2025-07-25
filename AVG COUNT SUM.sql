-- COUNT, AVG, SUM, MIN AND MAX 
CREATE DATABASE sales_db;
USE sales_db;
CREATE TABLE sales(
product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10, 2)
);

INSERT INTO sales (product_name, quantity, price) VALUES
('Apple', 10, 0.50),
('Banana', 20, 0.30),
('Orange', 15, 0.40),
('Apple', 5, 0.50),
('Banana', 30, 0.30); 

SELECT * FROM sales; 

-- 1. COUNT (*) - TOTAL numbers of rows 
SELECT COUNT(*) AS total_rows FROM sales; 

-- 2. AVG (quantity)- Average quantity sold
SELECT AVG(quantity) AS average_quantity FROM sales;

-- 3. SUM(quantity) - Total quantity sold 
SELECT SUM(quantity) AS total_quantity FROM sales; 

-- 4. MIN(quantity) - Minimum quantity in a transaction
SELECT MIN(quantity) AS min_quantity FROM sales; 

-- 5. MAX(quantity) - Maximum quantity in a transaction 
SELECT MAX(quantity) AS max_quantity FROM sales; 



-- LIKE Syntax
-- %= matches zero or more characters
-- _= matches exactly one character 



-- 1. Product that start with "A"
SELECT * FROM sales 
WHERE product_name LIKE 'A%'; 

-- 2. Products that end with "ana"
SELECT * FROM sales 
WHERE product_name LIKE'%ana';

-- 3. Products that contain the word "apple" anywhere
SELECT * FROM sales 
WHERE product_name LIKE'%Apple%';

-- 4. Pdoducts that have exactly one character before "anana"
SELECT * FROM sales 
WHERE product_name LIKE '_anana';

-- 5 Case insensitive search for "red"
SELECT * FROM sales
WHERE LOWER(product_name) LIKE '%red%';

-- 6. Products not containing the word "apple"
SELECT * FROM sales
WHERE product_name NOT LIKE'%Apple%';

-- 7. Products not starting with "G"
SELECT * FROM sales 
WHERE product_name NOT LIKE'G%';

-- 8. product names containing "apple" OR "banana" 
SELECT * FROM sales
WHERE product_name LIKE '%Apple%' OR product_name LIKE '%Banana%';

-- 9. Product names starting with "G" AND containing "apple"
SELECT * FROM sales
WHERE product_name LIKE 'G%' AND product_name LIKE '%Apple%';

-- 10. product that do not start wih "r" AND do not end with "e"
SELECT * FROM sales
WHERE product_name NOT LIKE 'R%' AND product_name NOT LIKE '%e';

