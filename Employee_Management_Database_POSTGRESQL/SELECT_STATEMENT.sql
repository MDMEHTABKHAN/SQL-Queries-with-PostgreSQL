/* The SELECT statement is used in SQL to retrieve data from a database. It allows you to specify the columns
you want to retrieve and the table from which you want to retrieve them */

SELECT * FROM employees; 

SELECT FirstName FROM Employees;

SELECT LastName FROM Employees;
SELECT Email FROM Employees;
SELECT PhoneNumber FROM Employees;

SELECT firstname, lastname, PhoneNumber FROM employees;
 
SELECT firstname, lastname, salary FROM employees;

SELECT firstname, lastname, salary, department FROM employees;

SELECT lastname, salary, jobTitle, hireDate FROM employees;

SELECT firstname, lastname, PhoneNumber, JobTitle, HireDate, department, salary FROM employees;

SELECT Jobtitle, HireDate, salary, department FROM employees;

-- Alias
SELECT concat(firstname, ' ',  lastname ) AS full_name, salary AS month_salary FROM employees;

SELECT concat(firstname, ' ',  lastname ) AS full_name, salary AS month_salary FROM employees;


-- Case sensitive
SELECT * FROM Employees WHERE Firstname COLLATE "C" = 'Aarav';
SELECT * FROM Employees WHERE lastname COLLATE "C" = 'Khan';




