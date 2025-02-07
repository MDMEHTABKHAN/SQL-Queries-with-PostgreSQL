
-- Find the total number of employees in each department:
SELECT department, COUNT(*) 
FROM employees
GROUP BY department;


--   Calculate total salary paid per department:-- 

SELECT department, SUM(salary)
FROM employees
GROUP BY department;

-- Find the average salary for each job title:

SELECT JobTitle, AVG(salary) AS Average_salry
FROM employees
GROUP BY JobTitle;


-- Show departments where the total salary exceeds 1000000:

SELECT department, SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) > 10000000;

-- Count the number of unique job titles:
SELECT COUNT( DISTINCT JobTitle) AS unique_jobtitle FROM employees;



-- How many employees are there in the company?
SELECT COUNT(*) FROM employees;

-- What is the total salary expenditure of the company?
SELECT SUM(salary) FROM employees;

-- What is the average salary of all employees?
SELECT AVG(salary) FROM employees;

-- Which employee has the highest salary?
SELECT * 
FROM employees 
WHERE salary = (SELECT MAX(salary) FROM employees);


-- What is the minimum salary in the company?
SELECT MIN(salary) FROM employees;

-- How many employees work in each department?
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- What is the total salary for each department?
SELECT department, SUM(salary)
FROM employees
GROUP BY department;

-- What is the average salary for each job title?
SELECT JobTitle, AVG(salary) AS Average_salary
FROM employees
GROUP BY JobTitle;


-- Which departments have a total salary expenditure greater than 100,000?
SELECT department, SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) > 1000000;



-- How many unique job titles exist in the company? 
SELECT COUNT(DISTINCT JobTitle) FROM employees;
SELECT DISTINCT JobTitle FROM employees;
