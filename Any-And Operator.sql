CREATE DATABASE anyandoperator;
use anyandoperator;
CREATE TABLE employees(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
department VARCHAR(50),
salary DECIMAL (10,2)
);

INSERT INTO employees (name, department, salary) VALUES
("Alice", "HR", 50000.00),
("Bob", "HR", 60000.00),
("Charlie", "IT", 75000.00),
("David", "IT", 70000.00 ),
("Eve", "Sales", 55000.00),
("Frank", "Sales", 58000.00);

SELECT * FROM employees;

SELECT name, salary FROM employees WHERE salary > ANY (SELECT salary FROM employees WHERE department= "HR");


SELECT name,salary FROM employees WHERE salary > ALL (SELECT salary FROM employees WHERE department = "sales");

SELECT name, salary FROM employees WHERE salary > ANY (SELECT salary FROM employees WHERE department= "sales");

SELECT name, salary FROM employees WHERE salary > ALL (SELECT salary FROM employees WHERE department= "HR");

