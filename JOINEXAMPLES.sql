CREATE DATABASE joinexamples;
USE joinexamples;
CREATE TABLE Students(
student_id int, 
student_name VARCHAR(50)
);
CREATE TABLE Marks(
student_id int,
subject varchar(50),
marks int
);

INSERT INTO students(student_id, student_name) values 
(1, "Alice"),
(2, "Bob"),
(3, "Charlie"); 

INSERT INTO marks (student_id, subject, marks) values 
(1, "Math", 90),
(1, "English", 85), 
(2, "Math", 78);
drop table students;
drop table marks;


SELECT student.student_name, marks.subject, marks.marks FROM students INNER JOIN marks on students.student_id = marks.student_id;

CREATE TABLE students(
student_id int PRIMARY KEY, 
name varchar(50)
);
drop table students;
CREATE TABLE marks(
mark_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT, 
subject varchar(50),
marks INT,
FOREIGN KEY(student_id) REFERENCES students(student_id)
);
drop table marks;


INSERT INTO students(student_id, name) VALUES
(1, "Alice"),
(2, "Bob"),
(3, "Charlie");

INSERT INTO marks (student_id, subject, marks) VALUES
(1, "Maths", 90),
(1, "English", 85),
(2, "Maths", 78); 


SELECT * FROM students;
SELECT * FROM marks;

-- INNER JOIN
SELECT students.name, marks.subject, marks.marks FROM students INNER JOIN marks ON students.student_id = marks.student_id;

-- LEFT JOIN (or left outer join)
SELECT students.name, marks.subject, marks.marks FROM students LEFT JOIN marks ON students.student_id= marks.student_id;

-- RIGHT JOIN( or RIGHT OUTER JOIN)
SELECT students.name, marks.subject, marks.marks FROM students RIGHT JOIN marks ON students.student_id= marks.student_id;

-- FULL OUTER JOIN 
SELECT students.name, marks.subject, marks.marks FROM students LEFT JOIN marks ON students.student_id= marks.student_id
UNION 
SELECT students.name, marks.subject, marks.marks FROM students RIGHT JOIN marks ON students.student_id = marks.student_id; 