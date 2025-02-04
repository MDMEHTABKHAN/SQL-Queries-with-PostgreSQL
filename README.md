# SQL-Queries-with-PostgreSQL
PostgreSQL Learning Repository
# 📊 Employee Management Database (PostgreSQL)

## 📌 Overview  
This repository contains a PostgreSQL database table for managing employee records. The table stores essential employee details such as personal information, job roles, salaries, and department names.  

## 🏗️ Table Structure  

The `Employee` table includes the following columns:

| Column Name  | Data Type         | Constraints                      | Description                           |
|-------------|------------------|---------------------------------|---------------------------------------|
| EmployeeID  | SERIAL           | PRIMARY KEY                     | Unique ID for each employee          |
| FirstName   | VARCHAR(50)      | NOT NULL                         | First name of the employee           |
| LastName    | VARCHAR(50)      | NOT NULL                         | Last name of the employee            |
| Email       | VARCHAR(100)     | UNIQUE, NOT NULL                 | Email address (must be unique)       |
| PhoneNumber | VARCHAR(15)      | UNIQUE                           | Contact number (must be unique)      |
| HireDate    | DATE             | NOT NULL                         | Date when the employee was hired     |
| JobTitle    | VARCHAR(100)     | -                                | Job designation of the employee      |
| Salary      | DECIMAL(10,2)    | CHECK (Salary > 0)               | Employee's salary (must be positive) |
| Department  | VARCHAR(100)     | NOT NULL                         | Department to which the employee belongs |
