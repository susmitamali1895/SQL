CREATE DATABASE UpdateExample;
USE UpdateExample;
CREATE TABLE Customers(
CUSTOMER_ID INT,
CUSTOMER_NAME VARCHAR(255),
CUSTOMER_ADRESS VARCHAR(255),
CUSTOMER_CITY VARCHAR(255),
CUSTOMER_COUNTRY VARCHAR(255)
);

INSERT INTO Customers VALUES (1, "SUSMITA MALI", "MANGLWAR PETH 416012", "KOLHAPUR", "INDIA"),
(2, "SHUBHAM PATIL", "THANE EAST", "MUMBAI", "INDIA"),
(3, "POOJA KULKARNI", "SADASHIV PETH", "PUNE", "INDIA"),
(4, "ELIXA", "BUNGLOW 234", "LONDON", "UK"),
(5, "SHINCHAN", "HOUSE NO 34", "BEIJING", "CHINA"),
(6, "SAYAMA", "JANNAT BUNGLOW", "KARACHI", "PAKISTAN"),
(7, "JULI", "HOUSE 120 HANOVER Sq.", "ROME", "ITALY"),
(8, "PAT CUMMINS", "PAT VILLA 2", "CANERRA", "AUSTRALIA" ),
(9, "RASHID KHAN ", "HOUSE No. 45", "KUWAIT CITY", "KUWAIT"),
(10, "THOMAS HARDY", "24 PAINT HOUSE", "PARIS","FRANCE");

SELECT * FROM Customers ;

UPDATE Customers
SET CUSTOMER_NAME =  "Alfred Schmidt",CUSTOMER_CITY= "Frankfurt" 
WHERE CUSTOMER_ID = 1;

-- update multiple records
UPDATE Customers 
SET CUSTOMER_CITY = "LILLE" 
WHERE CUSTOMER_COUNTRY = "FRANCE" ;

-- LIMIT 
SELECT * FROM Customers 
LIMIT 3 ;

-- LIMIT WITH 
SELECT * FROM Customers
WHERE CUSTOMER_COUNTRY = "INDIA"
LIMIT 2;

-- LIMIT WITH ORDER BY
SELECT * FROM Customers 
ORDER BY CUSTOMER_COUNTRY 
LIMIT 3; 





