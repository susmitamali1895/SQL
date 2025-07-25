CREATE DATABASE bitwiseoperators;
USE bitwiseoperators;
CREATE TABLE bitwise_demo(
id INT AUTO_INCREMENT PRIMARY KEY,
num1 INT NOT NULL,
num2 INT NOT NULL
);

INSERT INTO bitwise_demo(num1, num2) VALUES
(6,3),
(5,2),
(8,4),
(7,1);

SELECT * from bitwise_demo;

SELECT id, num1, num2, 
num1 & num2 AS bitwise_and, 
num1 | num2 AS bitwise_or,
num1 ^ num2 AS bitwise_xor,
num1 << 1 AS left_shift,
num2 >> 1 AS right_shift 
FROM bitwise_demo;