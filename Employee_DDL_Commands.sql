CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
location_id INT PRIMARY KEY AUTO_INCREMENT,
location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
gender ENUM('M','F'),
age INT CHECK (age>=18),
hire_date DATE DEFAULT(CURRENT_DATE),
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2),
FOREIGN KEY(department_id)REFERENCES Departments(department_id),
FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
SHOW TABLES;

-- Add email column
ALTER TABLE Employees
ADD email VARCHAR(100);

-- Modify designation datatype
ALTER TABLE Employees
MODIFY designation VARCHAR(200);

-- Drop age column
ALTER TABLE Employees
DROP COLUMN age;

-- Rename hire_date column
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE Departments TO departments_info;
RENAME TABLE Location to Locations;

TRUNCATE TABLE Employees;

DROP TABLE Employees;
DROP DATABASE employee;





