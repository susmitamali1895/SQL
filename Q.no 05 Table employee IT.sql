CREATE DATABASE sqlpractice;
USE sqlpractice;
CREATE TABLE employee(
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(30),
salary float
);

INSERT INTO employee(emp_id, name, department, salary) VALUES
(101, "Susmita", "IT", 60000.00),
(102, "Kajal", "HR", 55000.00),
(103, "Komal", "Sales", 45000.00),
(104, "Shravani", "IT", 52000.00);

SELECT * FROM employee;

-- query to display names of employees in IT department
SELECT * FROM employee WHERE department= "IT";

