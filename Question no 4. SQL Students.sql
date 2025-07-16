CREATE DATABASE exam;
USE exam;
CREATE TABLE students(
roll_no INT, 
name VARCHAR(50),
class INT, 
marks int
);

INSERT INTO students(roll_no, name, class, marks) VALUES 
(101, "Alice", 12, 88),
(102, "Bob", 12, 92),
(103, "Charlie", 11, 75),
(104, "Daisy", 11, 67),
(105, "Ethan", 12, 81);

SELECT * FROM students;

-- display all students from class 12
SELECT * from students WHERE class=12;

-- display names of students who scored more than 80
SELECT * FROM students where marks > 80 ;

-- add new coloumn age to students table 


-- update Daisys marks to 77
UPDATE students set marks =77 WHERE name = "Daisy"; 


