CREATE DATABASE comparisonoperators;
USE comparisonoperators;
CREATE TABLE employees(
id INT PRIMARY KEY,
name VARCHAR(100),
age INT,
department varchar(50),
salary DECIMAL(10,2),
email VARCHAR(100)
);

INSERT INTO employees (id, name, age, department, salary, email) VALUES
(1, "Alice", 30, "HR", 50000.00, "alice@example.com"),
(2, "BOB", 22, "Engineering", 60000.00, NULL),
(3, "Charlie", 28, "Marketing", 45000.00, "charlie@example.com"),
(4, "Diana", 35, "Engineering", 70000.00, "diana@example.com"),
(5, "Evan", 24, "HR", 40000.00, NULL);

SELECT * FROM employees;

-- find employees older than 25
SELECT * FROM employees WHERE age> 25;

-- find the employees not in the HR department
SELECT * FROM employees WHERE department <>"HR";

-- find the employees with salary between 45000 and 70000
SELECT * FROM employees WHERE salary between 45000 AND 70000;

-- find the employees whose names start with "A"
SELECT * FROM employees WHERE name LIKE 'A%';

-- find the employees without an email 
SELECT * from employees WHERE email is NULL;

-- find employees in HR or Engineering departments
SELECT * FROM employees WHERE department IN ("HR", "Engineering");