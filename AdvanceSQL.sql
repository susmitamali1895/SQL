CREATE DATABASE practice;
USE practice;
CREATE TABLE departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);
CREATE TABLE employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100),
salary DECIMAL(10,2),
dept_id INT,
manager_id INT,
join_date DATE, 
FOREIGN KEY (dept_id)REFERENCES departments(dept_id),
FOREIGN KEY (manager_id) REFERENCES employees(emp_id)
);

INSERT INTO departments VALUES 
(1, 'HR'),
(2, 'Finanace'),
(3, 'IT');

INSERT INTO employees VALUES 
(101, 'Alice', 60000, 1,NULL, '2021-01-10'),
(102, 'Bob', 50000, 1, 101, '2021-02-15'),
(103, 'Charlie', 55000, 2, 101, '2021-03-20'),
(104, 'David', 70000, 3, NULL, '2021-04-01');


SELECT * FROM departments;
SELECT * FROM employees;

-- self join 
SELECT E.emp_name AS Employee, 
M.emp_name AS Manager
From employees E;
