SELECT * FROM employee;

--  Data Definition Language (DDL)

 -- Add a column
 ALTER TABLE employee ADD COLUMN email VARCHAR(50);

-- DROP COLUMN
ALTER TABLE employee DROP COLUMN email;


-- RENAME COLUMN
ALTER TABLE employee RENAME COLUMN salary to slry;
ALTER TABLE employee RENAME COLUMN slry TO salary;


 -- Modify column type
 ALTER TABLE employee ALTER salary type NUMERIC(10,2);
 ALTER TABLE employee ALTER salary type INT;


 --  Data Manipulation Language (DML)

 INSERT INTO employee (first_name, last_name, department, salary, hire_date)
VALUES ('Mehtab', 'Khan', 'IT', 75000, '2023-01-01');

UPDATE employee
SET salary = 80000
WHERE employee_id = 1;

UPDATE employee
SET salary = 45000, hire_date = '2023-09-20'
WHERE employee_id = 31;

DELETE FROM employee
WHERE employee_id = 1;


-- Data Query Language (DQL)
SELECT * FROM employee;

SELECT * FROM employee WHERE department = 'IT';

SELECT * FROM employee ORDER BY salary DESC;

SELECT department, COUNT(*) FROM employee GROUP BY department;

SELECT AVG(salary), MIN(salary), MAX(salary) FROM employee;


