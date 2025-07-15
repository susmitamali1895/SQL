-- AGGREGATION
CREATE DATABASE TEST2;
USE TEST2;
CREATE TABLE Marks(
subject varchar(20),
score INT
);

INSERT INTO Marks (subject, score) values 
("marathi", 98),
("Hindi", 89),
("English", 95),
("Science", 82),
("History", 75);

SELECT * FROM marks;

SELECT * FROM marks where score AVG;


