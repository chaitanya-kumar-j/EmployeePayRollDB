-- UC1 => Create database and show database
-- Create the database
CREATE DATABASE payroll_service

-- view database
SELECT name FROM master.sys.databases

-- selecting database
USE payroll_service

-- UC2 => Create employee_payroll table in payroll_service database
CREATE TABLE employee_payroll(
Id INT IDENTITY(1,1) PRIMARY KEY,
Name VARCHAR(20),
Salary INT,
StartDate DATE)
 
-- UC3 => Create employee_payroll data
INSERT INTO employee_payroll VALUES ('Chaitanya', 10000, '2021-09-09')
INSERT INTO employee_payroll VALUES ('Mabel', 20000, '2021-10-09')
INSERT INTO employee_payroll VALUES ('Mounika', 30000, '2020-11-09')
INSERT INTO employee_payroll VALUES ('Nibedita', 40000, '2019-08-08')
INSERT INTO employee_payroll VALUES ('Manish', 50000, '2018-07-07')
INSERT INTO employee_payroll VALUES ('Kumar', 60000, '2019-06-06')

-- UC4 => Select and print all data in employee_payroll table
SELECT * FROM employee_payroll

-- UC5 => Select salary of particular employee, Select employees joined in particular period of time
-- Find salary of particular employee
SELECT Name,Salary FROM employee_payroll WHERE Name = 'Chaitanya'

-- Find employees joined in particular period of time
SELECT Name,Salary FROM employee_payroll WHERE StartDate BETWEEN CAST('2019-01-01' as DATE) AND GETDATE()

-- UC6 => Add new column to table and add data into column
ALTER TABLE employee_payroll
ADD Gender CHAR(1)

UPDATE employee_payroll SET Gender = 'M' WHERE Name = 'Chaitanya' or Name = 'Kumar' or Name = 'Manish'

UPDATE employee_payroll SET Gender = 'F' WHERE Name = 'Mabel' or Name = 'Name' or Name = 'Mounika'

SELECT * FROM employee_payroll

-- UC7 => Mathematical operations on salary column, gender wise
SELECT SUM(salary) FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT AVG(salary) FROM employee_payroll WHERE Gender = 'F' GROUP BY Gender;
SELECT MIN(salary) FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT MAX(salary) FROM employee_payroll WHERE Gender = 'F' GROUP BY Gender;
SELECT COUNT(Name) FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender;

-- UC8 => Add new Columns
ALTER TABLE employee_payroll ADD 
Phone VARCHAR(10),
Department VARCHAR(50) not null default 'Administration',
Address VARCHAR(100) not null default 'BridgeLabz,Bangalore' 

SELECT * FROM employee_payroll

-- UC9 => Add Somemore columns
ALTER TABLE employee_payroll ADD 
BasicPay FLOAT,
Deductions FLOAT,
TaxablePay FLOAT,
IncomeTax FLOAT,
NetPay FLOAT;

SELECT * FROM employee_payroll

-- UC10 => Add Terisa in multiple time
INSERT INTO employee_payroll VALUES 
('Terisa', 50000, '2018-07-07', 'F', '1234567890', 'Sales and Marketing', 'BridgeLabz,Bangalore', 789.0, 3456.4, 45.26, 123.4, 34567)
INSERT INTO employee_payroll VALUES 
('Terisa', 60000, '2018-07-07', 'F', '1234567890', 'Sales and Marketing', 'BridgeLabz,Bangalore', 879.0, 4457.3, 55.26, 133.4, 45678)
SELECT * FROM employee_payroll

