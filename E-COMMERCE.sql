CREATE DATABASE ECOMMERCE;
USE ECOMMERCE;
CREATE TABLE MYNTRA (
PRODUCT_NAME VARCHAR(255),
PRODUCT_BRAND VARCHAR(255),
PRODUCT_SIZE VARCHAR(255),
PRODUCT_MATERIAL VARCHAR(255),
PRODUCT_PRICE INT,
PRODUCT_SHIPPINGTIME VARCHAR(255)
);

INSERT INTO MYNTRA 
VALUES 
("KURTA", "BIBA", "L", "COTTON", 1200, " 7 DAYS"),
("SHOES", "ADIDAS", "27 CM", "MESH", 2500, "10 DAYS"),
("JEANS", "LEVIS", "L", "STRECHABLE", 1800, "8 DAYS"),
("JACKET", "PUMA", "XL", "COTTON", 2950, "10 DAYS"),
("WATCH", "TITAN", "ONE SIZE", "STEEL", 12500, "7 DAYS"); 

SELECT * FROM MYNTRA ; 

-- WHERE 
SELECT * FROM MYNTRA
WHERE 
PRODUCT_SIZE = "XL";

-- WHERE NOT 
SELECT * FROM MYNTRA
WHERE NOT PRODUCT_NAME = "WATCH";

-- AND 
SELECT * FROM MYNTRA
WHERE PRODUCT_BRAND = "LEVIS" AND PRODUCT_SIZE = "L" ; 

-- OR
SELECT * FROM MYNTRA 
WHERE PRODUCT_BRAND = "TITAN" OR PRDUCT_BRAND = "PUMA";

