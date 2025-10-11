CREATE DATABASE practiceexam;
USE practiceexam;
CREATE TABLE employees(
emp_id INT,
emp_name VARCHAR(50),
department VARCHAR(30),
salary DECIMAL(10,2),
joindate DATE 
);

INSERT INTO employees (emp_id, emp_name, department, salary, joindate) VALUES
(1, 'Shital', 'IT', 45000, '2025-10-08'),
(2, 'Sam', 'HR', 50000, '2024-09-04'),
(3, 'Rohini', 'IT', 60000, '2023-06-10'),
(4, 'Sujit', 'Finance', 55000, '2023-05-09'),
(5, 'Swati', 'HR', 52000, '2022-04-10');

SELECT * FROM employees;

-- UNIQUE

-- SORT BY SALARY
SELECT * FROM employees ORDER BY salary DESC;

-- JOIN DATE 
SELECT * FROM employees WHERE joindate > '2020-05-09';

-- SALARY greater 
SELECT * FROM employees WHERE salary > 50000;

-- DISPLAY name start with R 
SELECT * FROM employees WHERE emp_name LIKE 'R%';

-- TOTAL employees
SELECT COUNT(*) FROM employees;

SELECT 
MAX(salary) AS Maxsalary,
MIN(salary) AS Minsalary,
AVG(salary) AS avgsalary
from employees;

CREATE TABLE departments(
dept_id INT,
dept_name VARCHAR(30),
location VARCHAR(30)
);

INSERT INTO departments (dept_id, dept_name , location) VALUES
(1, 'HR', 'pune'),
(2, 'IT', 'pune'),
(3, 'Finance', 'mumbai');

SELECT * FROM departments;

SELECT employees.emp_id, employees.emp_name
FROM employees 
INNER JOIN departments
ON employees.department = departments.dept_name ;


SELECT COUNT(*) FROM employees GROUP BY department HAVING COUNT(*)>3;






