CREATE DATABASE aliases;
use aliases;
CREATE TABLE students(
name varchar(50),
age int,
city varchar(50)
);
 INSERT INTO students (name , age, city) VALUES
 ('Alice', 20, 'Delhi'),
 ('Bob', 22, 'Mumbai'),
 ('Charlie', 21, 'Delhi'),
 ('David', 23, 'Chennai');
 
 SELECT * FROM students;
 
 -- coloumn Alias
 SELECT name AS student_name , city AS hometown FROM students ;
 
 -- TABLE Alias
 SELECT s.name, s.city FROM students AS s; 
 
 -- Alice with WHERE
 SELECT s.name AS Name, s.city AS City From students s WHERE s.city = 'Delhi';
 
 -- Alice with Like Operator
 SELECT name AS student_name FROM students WHERE city LIKE 'D%';
 