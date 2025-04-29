
SELECT * FROM employee WHERE department = 'IT';

SELECT * FROM employee WHERE department != 'HR';
SELECT * FROM employee WHERE department <> 'HR';

SELECT * FROM employee WHERE salary > 60000;

SELECT * FROM employee WHERE salary <= 55000;

SELECT * FROM employee WHERE salary BETWEEN 60000 AND 70000;

SELECT * FROM employee 
WHERE hire_date BETWEEN '2020-01-01' AND '2022-12-31';

SELECT * FROM employee 
WHERE department = 'IT' OR department = 'Sales';

SELECT * FROM employee 
WHERE department = 'HR' AND salary > 60000;

SELECT * FROM employee 
WHERE department NOT IN ('IT', 'HR');


SELECT * FROM employee 
WHERE department IN ('Finance', 'Marketing');

SELECT * FROM employee 
WHERE first_name LIKE 'A%';

SELECT * FROM employee 
WHERE last_name LIKE '%son';


SELECT * FROM employee 
WHERE first_name LIKE '%li%';


SELECT * FROM employee 
WHERE salary BETWEEN 50000 AND 60000 AND department != 'Sales';

SELECT * FROM employee 
WHERE department = 'IT' AND first_name LIKE 'M%';


SELECT * FROM employee 
WHERE department NOT IN ('Sales', 'HR', 'Marketing') AND salary > 60000;



SELECT COUNT(*) AS total_employees FROM employee;

SELECT SUM(salary) AS total_salary FROM employee;

SELECT AVG(salary) AS avg_salary FROM employee;

SELECT MAX(salary) AS highest_salary FROM employee;

SELECT MIN(salary) AS highest_salary FROM employee;


SELECT department, COUNT(*) AS employee_count 
FROM employee 
GROUP BY department;


SELECT department, AVG(salary) AS AVG_Salary 
FROM employee
GROUP BY department;

SELECT department, MIN(salary) AS AVG_Salary 
FROM employee
GROUP BY department;

SELECT department, MAX(salary) AS AVG_Salary 
FROM employee
GROUP BY department;

SELECT department, SUM(salary) AS AVG_Salary 
FROM employee
GROUP BY department;


SELECT department, COUNT(*) AS emp_count 
FROM employee 
GROUP BY department 
HAVING COUNT(*) > 5;


SELECT department, AVG(salary) AS avg_salary 
FROM employee 
GROUP BY department 
HAVING AVG(salary) > 60000;

SELECT department, AVG(salary) AS avg_salary 
FROM employee
WHERE department = 'IT'
GROUP BY department 
HAVING AVG(salary) > 60000;

SELECT department, SUM(salary) AS total_salary 
FROM employee 
GROUP BY department 
HAVING SUM(salary) > 300000;


SELECT department, MIN(salary) AS min_salary 
FROM employee 
GROUP BY department 
HAVING MIN(salary) > 50000;


SELECT department, AVG(salary) AS avg_salary 
FROM employee 
GROUP BY department 
ORDER BY avg_salary DESC 
LIMIT 1;

SELECT department, SUM(salary) AS total_salary 
FROM employee 
GROUP BY department 
ORDER BY total_salary ASC 
LIMIT 1;

SELECT department, COUNT(*) AS emp_count 
FROM employee 
GROUP BY department 
HAVING COUNT(*) = 3;


SELECT department, AVG(salary) AS avg_salary 
FROM employee 
GROUP BY department 
ORDER BY avg_salary DESC;








