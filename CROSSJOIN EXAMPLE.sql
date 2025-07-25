CREATE DATABASE crossjoin;
USE crossjoin;
CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE subjects(
subject_id INT PRIMARY KEY,
subject_name VARCHAR(50)
);

INSERT INTO students(student_id, name) VALUES
(1, "Alice"),
(2, "Bob");

SELECT * FROM students;

INSERT INTO subjects (subject_id, subject_name) VALUES
(101, "Math"),
(102, "English");
SELECT * FROM subjects;

-- CROSS JOIN 
SELECT students.name , subjects.subject_name FROM students CROSS JOIN subjects;


