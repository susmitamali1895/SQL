CREATE DATABASE casestatement;
USE casestatement;
CREATE TABLE orders(
orderdetail_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT, 
product_id INT,
quantity int
);

INSERT INTO orders (order_id, product_id, quantity) VALUES
(10248,11,12),
(10248,42,10),
(10248,72,5),
(10249,14,9),
(10249,51,40);

SELECT * FROM orders;

-- case syntax
SELECT order_id , quantity ,
CASE 
WHEN quantity > 30 THEN "The quantity is greater than 30"
WHEN quantity = 30 THEN "Then quantity is equal to 30"
else "The quantity is under 30"
END AS quantityText
FROM orders;