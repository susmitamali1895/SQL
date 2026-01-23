CREATE DATABASE windowfunction;
USE windowfunction;
CREATE TABLE sales_data(
sale_id INT,
salesperson VARCHAR(50),
region VARCHAR(20),
sale_amount INT,
sale_date DATE
);
INSERT INTO sales_data VALUES
(1, 'Amit', 'North', 50000, '2025-01-01'),
(2, 'Neha', 'North', 70000, '2025-01-02'),
(3, 'Ravi', 'North', 70000, '2025-01-03'),
(4, 'Pooja', 'South', 45000, '2025-01-01'),
(5, 'Karan', 'South', 60000, '2025-01-02'),
(6, 'Meera', 'South', 60000, '2025-01-03');

SELECT * FROM sales_data;

-- RANK()
-- (Gaps in ranking)alter
SELECT
	salesperson,
    region,
    sale_amount,
    RANK() OVER(
		PARTITION BY region
        ORDER BY sale_amount DESC
        ) AS rank_in_region
FROM sales_data;

-- Gap after tie - Rank jumps from  1to 3
-- DENSE _RANK( No gaps)
SELECT 
	 salesperson,
     region,
     sale_amount,
     DENSE_RANK() OVER (
		PARTITION BY region
        ORDER BY sale_amount DESC
        ) AS dense_rank_in_region
FROM sales_data;

-- LAG()
-- (compare with previous row)
SELECT 
	salesperson,
    region,
    sale_date,
    sale_amount,
    LAG(sale_amount) OVER(
		PARTITION BY region
        ORDER BY sale_date
        ) AS previous_day_sale
FROM sales_data;

-- DAY TO DAY GROWTH(Real DS use)
SELECT 
	salesperson,
	region,
	sale_date,
	sale_amount,
	sale_amount - LAG(sale_amount) OVER (
		PARTITION BY region
        ORDER BY sale_date
    ) AS daily_growth
FROM sales_data;

CREATE TABLE employee_salary(
emp_id INT,
emp_name VARCHAR(50),
department VARCHAR(30),
salary INT,
effective_date DATE  
);
INSERT INTO employee_salary VALUES
(101, 'Arjun', 'IT', 60000, '2024-01-01'),
(101, 'Arjun', 'IT', 70000, '2025-01-01'),
(102, 'Sneha', 'IT', 70000, '2024-01-01'),
(102, 'Sneha', 'IT', 70000, '2025-01-01'),
(103, 'Rahul', 'HR', 50000, '2024-01-01'),
(103, 'Rahul', 'HR', 55000, '2025-01-01'),
(104, 'Kavita', 'HR', 55000, '2024-01-01'),
(105, 'Manish', 'Finance', 80000, '2025-01-01');



-- Find salary Ranking (with gaps) 
SELECT 
	emp_name,
    department,
    salary,
    RANK () OVER(
		PARTITION BY department 
        ORDER BY salary DESC 
    ) AS salary_rank
FROM employee_salary;

-- Find salary RANKING (No gaps)
SELECT 
	 emp_name, 
     department,
     salary,
     RANK() OVER (
		PARTITION  BY department 
        ORDER BY salary DESC 
        ) AS dense_salary_rank
FROM employee_salary;

-- salary increase tracking 
-- if u want only previous then use only LAG ()
SELECT 
	 emp_name ,
     department,
     salary,
     effective_date,
    LAG(salary) OVER (
		PARTITION BY emp_name 
        ORDER BY effective_date
     ) AS previous_salary
FROM employee_salary;

-- salary difference 
-- present - previous_salary then used (salary - LAG(salary))
SELECT 
	 emp_name ,
     department,
     salary,
     effective_date,
    salary - LAG(salary) OVER (
		PARTITION BY emp_name 
        ORDER BY effective_date
     ) AS previous_salary
FROM employee_salary;






