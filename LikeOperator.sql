CREATE DATABASE likeoperatorexample;
use likeoperatorexample;
CREATE TABLE employees (
first_name varchar(50),
last_name varchar (50),
department varchar(50),
salary decimal(10,2)
);

INSERT INTO employees(first_name, last_name, department, salary) 
VALUES 
('John', 'Doe', 'Sales', 50000.00),
('Jane', 'Smith', 'Marketing', 55000.00),
('Mike', 'Brown', 'IT', 60000.00),
('Anna', 'Taylor', 'HR', 52000.00),
('Tom', 'Wilson', 'IT', 61000.00 );

SELECT * FROM employees;

SELECT * FROM employees where department LIKE 'M%';

-- use like to find names 
SELECT * FROM employees WHERE first_name LIKE 'J%';

-- Last name ends with "Son"
SELECT * FROM employees WHERE last_name LIKE '%son';

-- department
SELECT * FROM employees WHERE department LIKE 'I%' ;

-- department contains a 
SELECT * FROM employees WHERE department LIKE '%a%';

-- first name has 'an' anywhere
SELECT * FROM employees WHERE first_name LIKE '%an%';

-- first name with exactly 4 letters
SELECT * FROM employees WHERE first_name LIKE '____';

-- FIRST NAME starts with "M" and ends with "e" 
SELECT * FROM employees WHERE first_name LIKE 'M%e'; 

-- First name has o as the second letter 
SELECT * FROM employees WHERE first_name LIKE '_o%';

-- first_name starts with j and ends with e
SELECT * FROM employees WHERE first_name LIKE 'J%' OR first_name LIKE '%e'; 