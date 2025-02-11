CREATE TABLE employee(
emp_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(50),
salary DECIMAL(10,2) CHECK (salary > 0),
joining_date DATE NOT NULL,
age INT CHECK (age >= 18)
);




INSERT INTO employee (first_name, last_name, department, salary, joining_date, age) VALUES
('Aarav', 'Sharma', 'HR', 50000.00, '2023-01-15', 25),
('Vivaan', 'Verma', 'Finance', 60000.00, '2023-02-20', 28),
('Aditya', 'Singh', 'IT', 70000.00, '2023-03-10', 30),
('Vihaan', 'Gupta', 'Marketing', 55000.00, '2023-04-05', 26),
('Arjun', 'Mehta', 'Sales', 65000.00, '2023-05-12', 29),
('Sai', 'Patel', 'HR', 52000.00, '2023-06-18', 27),
('Reyansh', 'Reddy', 'Finance', 61000.00, '2023-07-22', 31),
('Ayaan', 'Nair', 'IT', 72000.00, '2023-08-30', 32),
('Krishna', 'Kumar', 'Marketing', 56000.00, '2023-09-15', 24),
('Ishaan', 'Das', 'Sales', 67000.00, '2023-10-20', 33),
('Shaurya', 'Rao', 'HR', 53000.00, '2023-11-25', 26),
('Atharv', 'Chopra', 'Finance', 62000.00, '2023-12-30', 28),
('Kabir', 'Joshi', 'IT', 73000.00, '2024-01-10', 29),
('Aarush', 'Mishra', 'Marketing', 57000.00, '2024-02-15', 27),
('Dhruv', 'Singh', 'Sales', 68000.00, '2024-03-20', 30),
('Rudra', 'Shah', 'HR', 54000.00, '2024-04-25', 31),
('Anay', 'Yadav', 'Finance', 63000.00, '2024-05-30', 32),
('Aarav', 'Sharma', 'IT', 74000.00, '2024-06-10', 33),
('Vivaan', 'Verma', 'Marketing', 58000.00, '2024-07-15', 24),
('Aditya', 'Singh', 'Sales', 69000.00, '2024-08-20', 25),
('Vihaan', 'Gupta', 'HR', 55000.00, '2024-09-25', 26),
('Arjun', 'Mehta', 'Finance', 64000.00, '2024-10-30', 27),
('Sai', 'Patel', 'IT', 75000.00, '2024-11-10', 28),
('Reyansh', 'Reddy', 'Marketing', 59000.00, '2024-12-15', 29),
('Ayaan', 'Nair', 'Sales', 70000.00, '2025-01-20', 30),
('Krishna', 'Kumar', 'HR', 56000.00, '2025-02-25', 31),
('Ishaan', 'Das', 'Finance', 65000.00, '2025-03-30', 32),
('Shaurya', 'Rao', 'IT', 76000.00, '2025-04-10', 33),
('Atharv', 'Chopra', 'Marketing', 60000.00, '2025-05-15', 24),
('Kabir', 'Joshi', 'Sales', 71000.00, '2025-06-20', 25),
('Aarush', 'Mishra', 'HR', 57000.00, '2025-07-25', 26),
('Dhruv', 'Singh', 'Finance', 66000.00, '2025-08-30', 27),
('Rudra', 'Shah', 'IT', 77000.00, '2025-09-10', 28),
('Anay', 'Yadav', 'Marketing', 61000.00, '2025-10-15', 29),
('Aarav', 'Sharma', 'Sales', 72000.00, '2025-11-20', 30);

SELECT * FROM employee;

SELECT * FROM employees;
-- 1. first_name and department
SELECT first_name, department FROM employee;

-- 2. update it department salary by 10%

UPDATE employee
SET salary = salary + (salary*0.9)
WHERE department = 'IT';

-- 3. delete all employee age > 34

DELETE FROM employee WHERE age > 34

-- 4. add a new column email

ALTER TABLE employee
ADD COLUMN email VARCHAR(70);

-- 5. rename department to dept_name

ALTER TABLE employee
RENAME COLUMN department TO dept_name;

-- 6. RENAME TABLE NAME
ALTER TABLE employee RENAME TO employees;
ALTER TABLE employees RENAME TO employee;

-- 7. retrieve the employee who joined after 2024
SELECT first_name, last_name, joining_date FROM employee WHERE joining_date > '2024-04-19';

-- 8. change salary data type
ALTER TABLE employee
ALTER COLUMN salary TYPE INTEGER;

ALTER TABLE employee
ALTER COLUMN salary TYPE DECIMAL(10,3);

-- 9. INCREASE IT DEPARTMENT SALARY 1000.100
UPDATE employee
SET salary = Salary+ 1000.100
WHERE dept_name = 'IT';


-- 10 order wise 
SELECT first_name, last_name, age, salary FROM employee ORDER BY salary;
SELECT last_name, age, dept_name, salary FROM employee ORDER BY SALARY DESC;

-- 11. UPDATE AGE BY 1
UPDATE employee
SET age = 1+age;