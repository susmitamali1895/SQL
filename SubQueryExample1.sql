CREATE DATABASE subquery;
USE subquery;
CREATE TABLE employees(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
salary DECIMAL(10,2),
hire_date DATE,
department_id int
);
DROP TABLE employees;

CREATE TABLE departments (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

CREATE TABLE employees(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (100) NOT NULL ,
department_id INT,
FOREIGN KEY (department_id) REFERENCES departments(id)
);
DROP TABLE employees;

CREATE TABLE employees (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (100) NOT NULL,
email VARCHAR(100) UNIQUE,
salary DECIMAL(10,2),
hire_date DATE,
department_id int
);

INSERT INTO departments(name) VALUES
("Sales"),
("Marketing"),
("HR"),
("IT");

INSERT INTO employees ( name, email, salary, hire_date, department_id) VALUES 
("Alice Johnson", "Alice@example.com", 60000.00, "2022-01-15",1),
("Bob Smith", "bob@example.com", 55000.00, "2021-09-01",2),
("Charlie Brown", "charlie@example.com", 70000.00, "2020-06-10",1),
("Diana Prince", "diana@example.com", 50000.00, "2023-02-20",3),
("Ethan Hunt", "ethan@example.com", 65000.00, "2019-12-05", 4);


SELECT * FROM departments;

SELECT * FROM employees;
ALTER TABLE employees ADD FOREIGN KEY (department_id) REFERENCES departments(id);

-- subquery in where clause = get employees from sales department
SELECT name, email FROM employees WHERE department_id =(
SELECT id
FROM departments
WHERE name = "Sales"
);

-- subquery with IN = get employees in Sales or IT
SELECT name FROM employees WHERE department_id IN (
SELECT id
FROM departments
WHERE name IN ("Sales", "IT")
);

-- subquery in select clause= show each employee with their department name
SELECT name, 
(SELECT name FROM departments WHERE id= employees.department_id)
AS department
FROM employees;

-- correated subquery = get employees earning above the average salary of the department
SELECT name, salary FROM employees e WHERE salary >(
SELECT AVG (salary)
FROM employees 
where department_id= e.department_id
);

-- subquery in from clause = fet average salary per department
SELECT d.name AS department,
avg_salaries.avg_salary FROM (
SELECT department_id, AVG (salary) AS avg_salary 
FROM employees 
GROUP BY department_id ) AS avg_salaries JOIN departments d ON avg_salaries.department_id = d.id;


