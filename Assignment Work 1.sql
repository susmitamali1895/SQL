CREATE DATABASE work1;
USE work1;
-- Customers Table
CREATE TABLE Customers (
    CustomerID VARCHAR(10),
    CustomerName VARCHAR(100),
    Gender VARCHAR(10),
    City VARCHAR(50)
);

-- Accounts Table
CREATE TABLE Accounts (
    AccountID VARCHAR(10),
    CustomerID VARCHAR(10),
    AccountType VARCHAR(20),
    Balance DECIMAL(12,2)
);

-- Transactions Table
CREATE TABLE Transactions (
    TransactionID VARCHAR(10),
    AccountID VARCHAR(10),
    TransactionDate DATE,
    Type VARCHAR(10), -- 'Deposit' or 'Withdraw'
    Amount DECIMAL(10,2)
);
-- Customers
INSERT INTO Customers VALUES
('C001', 'Alice Sharma', 'Female', 'Delhi'),
('C002', 'Bob Verma', 'Male', 'Mumbai'),
('C003', 'Carol D\'Souza', 'Female', 'Bangalore'),
('C004', 'David Khan', 'Male', 'Hyderabad');

-- Accounts
INSERT INTO Accounts VALUES
('A001', 'C001', 'Savings', 5000.00),
('A002', 'C001', 'Current', 12000.00),
('A003', 'C002', 'Savings', 15000.00),
('A004', 'C003', 'Savings', 8000.00),
('A005', 'C004', 'Current', 3000.00);

-- Transactions
INSERT INTO Transactions VALUES
('T001', 'A001', '2023-01-01', 'Deposit', 2000.00),
('T002', 'A001', '2023-01-05', 'Withdraw', 1000.00),
('T003', 'A002', '2023-01-10', 'Deposit', 5000.00),
('T004', 'A003', '2023-02-01', 'Withdraw', 3000.00),
('T005', 'A004', '2023-02-10', 'Deposit', 4000.00),
('T006', 'A005', '2023-02-20', 'Withdraw', 1000.00),
('T007', 'A001', '2023-03-01', 'Deposit', 1500.00),
('T008', 'A002', '2023-03-05', 'Withdraw', 2000.00);

SELECT * FROM Customers;
SELECT * FROM Accounts;
SELECT * FROM Transactions;

-- List all accounts with balance greater than 7000.
SELECT * FROM Accounts WHERE Balance > 7000;

-- Show total deposits and total withdrawals per account.
SELECT SUM(Type) FROM Transactions;

-- Find the customer who has the highest total balance.
SELECT * FROM Accounts WHERE Balance 
ORDER BY Balance DESC
LIMIT 1;

-- Show average transaction amount per account type.
SELECT account_type , AVG(Amount) FROM Transactions 

-- Find customers with more than one account.
