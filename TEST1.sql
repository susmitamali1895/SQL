CREATE DATABASE TEST;
USE TEST;
CREATE TABLE Students(
name varchar (50),
age INT,
grade CHAR(1)
);

INSERT INTO Students( name, age, grade) values
("Susmita", 29, "A"),
("Namrata", 30, "B"),
("Kajal", 29, "A");

SELECT * FROM Students;

SELECT * FROM Students WHERE age >15;

SELECT * FROM Students ORDER BY name  DESC ;

-- in and between
SELECT * FROM Students where age between 28 AND 31 ;



