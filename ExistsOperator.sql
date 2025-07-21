CREATE DATABASE existsoperator;
USE existsoperator;
CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
supplier_id INT , 
category_id INT,
unit VARCHAR(100),
price DECIMAL(10,2),
FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE suppliers(
supplier_id INT PRIMARY KEY ,
supplier_name VARCHAR(50),
contact_name VARCHAR(100),
address VARCHAR(100),
city VARCHAR(50),
postalcode VARCHAR(50),
country VARCHAR(50)
);

INSERT INTO products (product_id, product_name, supplier_id, category_id, unit, price) VALUES
(1,"Chais", 1,1,"10 boxes x 20 bags", 18.00),
(2,"Chang", 1, 1,"24-12 oz bottles", 19.00),
(3,"Anissed syrup", 1,2, "12-550 ml bottle", 10.00),
(4,"Chef Antons Cajun Seasoning", 2, 2, "48-6 oz jars", 22.00),
(5,"Chef Antons Gumbo Mix", 2, 2, "36 boxes", 21.35);

INSERT INTO suppliers(supplier_id,supplier_name, contact_name, address, city, postalcode, country) VALUES
(1,"Exotic liquid", "Charlotte cooper", "49 Gilbert st." , "London", "EC1 4SD", "UK"),
(2,"New orleans cajun Delights", "Shelley burke", "P.O Box 78934", "New Orlens", "70117", "USA"),
(3,"Grandma Kellys Homestead", "Regina Murphy", "707 oxford rd.", "Ann Arbor", "48104", "USA"),
(4,"Tokyo Traders", "Yoshi Nagase", "9-8 Sekimai Musashino-shi", "Tokyo", "100", "Japan");

SELECT * FROM products;
select * FROM suppliers;

-- a prodcuct price less than 20
SELECT supplier_name FROM suppliers WHERE EXISTS (SELECT product_name FROM products WHERE products.supplier_id = suppliers.supplier_id AND price < 20); 

-- suppliers with a product price equal to 22
SELECT supplier_name FROM suppliers WHERE EXISTS (SELECT product_name FROM products WHERE products.supplier_id = suppliers.supplier_id AND price = 22);