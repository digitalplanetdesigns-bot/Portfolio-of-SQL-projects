-- Create employee table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    department VARCHAR(50)
);

-- Find employees with above-average salaries
SELECT employee_id, name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Filter employees by department
SELECT name, department
FROM employees
WHERE department = 'HR';