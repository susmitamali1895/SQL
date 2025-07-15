CREATE DATABASE selfjoin;
USE selfjoin;
CREATE TABLE employees(
emp_id INT PRIMARY KEY,
name varchar(50),
manager_id int
);

INSERT INTO employees (emp_id, name, manager_id) VALUES
(1, "Alice", NULL), -- Alice is the CEO
(2, "Bob", 2), -- Bob reports to Alice
(3, "Charlie", 1), -- Charlie reports to Alice
(4, "David", 2); -- David reports to Bob

-- SELF JOIN to show employee-manager pairs
SELECT e1.name AS employee, e2.name AS manager FROM employees e1 LEFT JOIN employees e2 ON e1.manager_id = e2.emp_id;