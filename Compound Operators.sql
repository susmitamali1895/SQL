CREATE DATABASE compoundoperators;
USE compoundoperators;
CREATE TABLE accounts(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
balance DECIMAL (10,2)
);

INSERT INTO accounts(name, balance) VALUES
("Alice", 1000.00),
("Bob", 500.00),
("Charlie", 750.00);

SELECT * FROM accounts;

-- simulate to compound operator (Add 100  to alice's balance)
UPDATE accounts SET balance = balance +100 WHERE name = "Alice";

-- simulate -= compound operator (Substact 50 from Bobs balance)
UPDATE accounts SET balance = balance -50 WHERE name = 'Bob';

-- simulate *= compound operator(Multiply charlie's balance by 2)
UPDATE accounts SET balance = balance *2 WHERE name = "Charlie";