CREATE DATABASE CARS;
USE CARS;
CREATE TABLE Information(
CAR_NAME VARCHAR(255),
CAR_MODEL VARCHAR(255),
CAR_PRICE INT,
CAR_FUNCTON VARCHAR(255),
CAR_CHESSNUMBER int
);

INSERT INTO Information (CAR_NAME, CAR_MODEL, CAR_PRICE, CAR_FUNCTON, CAR_CHESSNUMBER)
VALUES
("FORTUNER", "TOP", 2700000, "DIESEL", 25489);

INSERT INTO Information (CAR_NAME, CAR_MODEL, CAR_PRICE, CAR_FUNCTON, CAR_CHESSNUMBER)
VALUES
("THAR", "TOP", 2550000, "DIESEL", 154668);

INSERT INTO Information (CAR_NAME, CAR_MODEL, CAR_PRICE, CAR_FUNCTON, CAR_CHESSNUMBER)
VALUES
("INNOVA", "SECONDTOP", 2200000, "CNG", 31454);

INSERT INTO Information (CAR_NAME, CAR_MODEL, CAR_PRICE, CAR_FUNCTON, CAR_CHESSNUMBER)
VALUES
("SWIFT", "TOP", 150000, "PETROL", 1465515);

INSERT INTO Information (CAR_NAME, CAR_MODEL, CAR_PRICE, CAR_FUNCTON, CAR_CHESSNUMBER)
VALUES
("PUNCH", "SECONDTOP", 1800000, "ELECTRIC", 254544);

SELECT * FROM Information;