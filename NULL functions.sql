CREATE DATABASE nullfunctions;
USE nullfunctions;
CREATE TABLE employees(
id INT PRIMARY KEY,
name VARCHAR(100),
salary DECIMAL(10,2),
commission DECIMAL(10,2)
);

INSERT INTO employees (id, name, salary, commission) VALUES
(1, "Alice", 5000.00, NULL),
(2, "Bob", 4500.00, 500.00),
(3, "Charlie", NULL, NULL),
(4, "Diana", 6000.00, 1000.00);

SELECT * FROM employees;

-- IFNULL = replace null with a default value
SELECT name, salary, IFNULL (commission,0) AS adjusted_commission FROM employees;

-- COALESCE = Return the first non-null value
SELECT name, COALESCE (salary,3000) AS adjusted_salary FROM employees;

-- NULLIF = returns NULL IF two values are equal
SELECT name, salary, commission , NULLIF(salary, commission) AS null_if_equal FROM employees;

