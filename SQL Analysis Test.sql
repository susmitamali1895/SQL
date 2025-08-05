CREATE DATABASE analysis;
USE analysis;
CREATE TABLE Orders(
order_id VARCHAR(10),
order_date DATE,
ship_date DATE ,
customer_id VARCHAR(10),
segment VARCHAR(20),
region VARCHAR(20),
sales DECIMAL(10,2),
quantity INT, 
discount DECIMAL(4,2),
profit DECIMAL(10,2)
);

CREATE TABLE Customers(
customer_id VARCHAR(10),
customer_name VARCHAR(100),
country VARCHAR(50)
);

CREATE TABLE Products(
product_id VARCHAR(10),
category VARCHAR(50),
sub_category VARCHAR(50),
product_name VARCHAR(100)
);

-- ORDERS
INSERT INTO Orders VALUES
('O1001', '2023-01-05', '2023-01-10', 'C001', 'Consumer', 'East', 500.00, 5, 0.10, 50.00),
('O1002', '2023-01-07', '2023-01-12', 'C002', 'Corporate', 'West', 300.00, 3, 0.00, 45.00),
('O1003', '2023-01-10', '2023-01-15', 'C001', 'Consumer', 'East', 200.00, 2, 0.05, 20.00),
('O1004', '2023-02-01', '2023-02-05', 'C003', 'Home Office', 'Central', 800.00, 8, 0.20, 60.00),
('O1005', '2023-02-10', '2023-02-14', 'C004', 'Consumer', 'South', 450.00, 4, 0.15, -20.00);

-- CUSTOMERS 
INSERT INTO Customers VALUES
('C001', 'Alice Johnson', 'USA'),
('C002', 'Bob Smith', 'USA'),
('C003', 'Carol White', 'USA'),
('C004', 'David Brown', 'USA');

-- Products 
INSERT INTO Products VALUES
('P001', 'Furniture', 'Chairs', 'Office Chair'),
('P002', 'Technology', 'Phones', 'Smartphone'),
('P003', 'Office Supplies', 'Paper', 'A4 Paper'),
('P004', 'Furniture', 'Tables', 'Wooden Table'),
('P005', 'Technology', 'Accessories', 'Wireless Mouse');

SELECT * FROM Orders;
SELECT * FROM Customers;
SELECT *FROM Products;

-- greater than 400
SELECT * FROM Orders WHERE sales > 400;

-- total profit for each region
SELECT region , SUM(profit) FROM Orders 
GROUP BY region;


-- highest total sale
SELECT customer_id , SUM(sales) AS TotalSales FROM Orders 
GROUP BY customer_id
ORDER BY TotalSales DESC
LIMIT 1;
-- avg quantity and disount
SELECT segment , AVG(discount), AVG(quantity)
FROM orders 
GROUP BY segment;

-- customers who order more then 1
SELECT customer_id , COUNT(1) FROM Orders 
GROUP BY cusomer_id;

-- total sales and avg profit per month
SELECT order_date , SUM(sales), AVG(profit) FROM Orders
GROUP BY order_date  ;

-- total orders per segment
SELECT segment , COUNT(order_id) FROM Orders
GROUP BY segment;

-- region wise profit
SELECT region, SUM(profit) FROM Orders WHERE profit > 50 
GROUP BY region ;

-- total sales and total profit
SELECT  SUM(sales) AS TotalSales, SUM(profit) AS TotalProfit FROM (Orders);

-- number of distinct customers in each region
SELECT region, COUNT(DISTINCTCustomer_id) AS UniqueCustomer FROM Orders 
GROUP BY region;