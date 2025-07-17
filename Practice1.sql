CREATE DATABASE PracticeEx1;
USE PracticeEx1;
CREATE TABLE EmployeeAttendance(
employee_name  varchar(50),
department varchar(50),
hours_worked INT,
work_date DATE 
);

INSERT INTO EmployeeAttendance (employee_name, department, hours_worked, work_date) values
('Alice', 'HR', 8, '2024-09-01'),
('Bob', 'IT', 9, '2024-09-01'),
('Charlie', 'Finance', 7, '2024-09-01'),
('Alice', 'HR', 8, '2024-09-02'),
('Bob', 'IT', 10, '2024-09-02'),
('David', 'IT', 6, '2024-09-02'),
('Charlie', 'Finance', 7, '2024-09-02'),
('Eve', 'HR', 7, '2024-09-01'),
('Eve', 'HR', 6, '2024-09-02');

SELECT * FROM EmployeeAttendance;

-- total number of attendance records= count is used for total count of any records & AS is name given by us 
SELECT COUNT(*) AS total_attendance_records
FROM EmployeeAttendance;

-- minimum and maximum hours worked by any employee on any day.(MIN=Smallest, MAX= Large)
SELECT 
    MIN(hours_worked) AS min_hours_worked, 
    MAX(hours_worked) AS max_hours_worked
FROM EmployeeAttendance;

-- total number of hours worked by all employees. (SUM is used for addition of all records or worked hours)
SELECT SUM(hours_worked) AS total_hours_worked
FROM EmployeeAttendance;


-- average hours worked per record. 
SELECT AVG(hours_worked) AS avg_hours_per_record
FROM EmployeeAttendance;

-- total hours worked by each employee
SELECT employee_name, SUM(hours_worked) AS total_hours_worked
FROM EmployeeAttendance
GROUP BY employee_name;

-- average daily hours per department.
SELECT AVG(hours_worked) AS daily_hours
FROM EmployeeAttendance
GROUP BY department;


-- Count how many records each department has
SELECT COUNT(department) AS records_from_departments 
FROM EmployeeAttendance
GROUP BY department;

-- Show departments with total hours worked more than 15
SELECT department, SUM(hours_worked) AS total_hours
FROM EmployeeAttendance 
GROUP BY department HAVING SUM(hours_worked) >15;

-- the employee(s) who worked more than 8 hours in a day.
SELECT employee_name ,work_date , SUM(hours_worked) AS hours_per_day
FROM EmployeeAttendance
GROUP BY employee_name , work_date
HAVING SUM(hours_worked) >8;


-- for each department, show the maximum hours worked in a single day.
SELECT department, MAX(daily_hours) AS max_daily_hours
FROM (
    SELECT department, work_date, SUM(hours_worked) AS daily_hours
    FROM EmployeeAttendance
    GROUP BY department, work_date
) AS dept_day_totals
GROUP BY department;