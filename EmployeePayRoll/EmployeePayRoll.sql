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

-- UC5 => Select salary of particular employee, Select employees joined in particular period of time

-- UC6 => Add new column to table and add data into column

-- UC7 => Mathematical operations on salary column, gender wise

-- UC => 