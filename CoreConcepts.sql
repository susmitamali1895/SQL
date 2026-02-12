CREATE DATABASE collage;
USE collage;
CREATE TABLE students(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);
INSERT INTO students VALUES
(1, 'Susmita', 30),
(2, 'Anuja', 29),
(3, 'Trupti', 32),
(4, 'Kiran', 35);
SELECT * FROM students;