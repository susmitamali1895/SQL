CREATE DATABASE selectstatement;
USE selectstatement;
CREATE TABLE employees(
id INT PRIMARY KEY,
name VARCHAR(100),
department VARCHAR(50),
salary DECIMAL (10,2)
);

INSERT INTO employees (id, name, department, salary) VALUES
(1, "Alice", "HR", 55000.00),
(2, "Bob", "IT", 70000.00),
(3,"Charlie", "Finanace", 65000.00),
(4, "David", "IT", 72000.00 );

SELECT * FROM employees;

CREATE TABLE high_salary_employees(
id INT PRIMARY KEY,
name VARCHAR(100),
department VARCHAR(50), 
salary DECIMAL(10,2)
);

-- COPY employees with salary > 60000 into a new table
INSERT INTO high_salary_employees (id, name, department, salary) SELECT id,name,department,salary FROM employees WHERE salary > 60000;

SELECT * FROM high_salary_employees ;