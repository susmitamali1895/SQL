CREATE DATABASE anyoperator;
USE anyoperator;
CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
supplier_id INT,
category_id INT,
unit VARCHAR(50),
price DECIMAL (10,2)
);

CREATE TABLE orderdetails(
oderdetail_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO products( product_id, product_name, supplier_id, category_id, unit, price) VALUES
(1, "Chais", 1,1, "10 boxes x 20 bags", 18.00),
(2, "Chang", 1,1, "24-12 oz bottles", 19.00),
(3, "Aniseed syrup", 1,2, "12-550ml", 10.00),
(4, "Chef Antons Cajun Seasoning", 2, 2, "48-6 oz jars", 22.00),
(5, "Chef Antons Gumbo mix", 2,2, "36 boxes", 21.35),
(6, "Grandma's Boysenberry Spread ", 3,2, "12-8 oz jars", 25.00),
(7 , "uncle Bob's Organic Dried Pears", 3, 7 , "12-1 lb pkgs", 30.00),
(8, "Northwoods canberry sauce", 3,2, "12-12 oz jars", 40.00),
(9, "Mishi kobe Niku", 4,6, "18-500g pkgs", 97.00);

INSERT INTO orderdetails(oderdetail_id, order_id, product_id, quantity) VALUES
(1, 10248, 11,12),
(2, 10248, 42,10),
(3, 10248, 72, 5),
(4, 10249, 14,9),
(5, 10249, 51,40),
(6, 10250, 41, 10),
(7, 10250, 51, 35),
(8, 10250, 65, 15),
(9, 10251, 22, 6),
(10, 10251, 57, 15);
