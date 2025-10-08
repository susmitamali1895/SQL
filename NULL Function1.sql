CREATE DATABASE nullfunction;
USE nullfunction;
CREATE TABLE employees(
emp_id INT,
emp_name VARCHAR(50),
department VARCHAR(30),
bonus DECIMAL (10,2),
commission DECIMAL (10,2)
);
INSERT INTO employees (emp_id, emp_name, department, bonus, commission) VALUES 
(1, 'Amit', 'Sales', 5000, 1000),
(2, 'Sneha', 'HR', NULL, 2000),
(3, 'Raj', 'IT' , 3000, NULL),
(4, 'Priya', 'Finance', NULL, NULL),
(5, 'Karan','Marketing', 7000, 1500);

SELECT * FROM employees;

CREATE TABLE employee_income(
emp_id INT,
emp_name VARCHAR(50),
total_income DECIMAL(10,2),
remarks VARCHAR(50)
);
-- using IFNULL or COALESCE() 
-- IFNULL (coloum, value)-> replaces NULL with given values 
-- COALESCE (a,b,c,...)-> returns first non-NULL values

INSERT INTO employee_income(emp_id, emp_name,total_income, remarks)
SELECT 
	emp_id,
    emp_name, 
    (IFNULL(bonus,0) + IFNULL(commission,0)) AS total_income,
    CASE 
		WHEN bonus IS NULL AND commission IS NULL THEN 'No Bonus or Comission'
        WHEN bonus IS NULL THEN 'No Bonus'
        WHEN commission IS NULL THEN 'No Commission'
        ELSE 'Full Income'
	END AS remarks
FROM employees;

-- COALESCE()
-- Returns first non-NULL values
SELECT emp_name, COALESCE(bonus,commission,0) AS first_non_null
FROM employees;

-- NULLIF(a,b)
-- NULL IF both values are same 
SELECT emp_name, NULLIF(bonus,commission) AS check_equal
FROM employees;

-- ISNULL(column)
-- checks if a column is null (returns 1 for TRUE, 0 for FALSE)
SELECT emp_name , ISNULL(bonus) AS bonus_is_null
FROM employees;


