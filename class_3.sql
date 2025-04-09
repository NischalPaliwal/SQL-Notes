CREATE DATABASE Lab;
CREATE TABLE departments (
 department_id INT PRIMARY KEY,
 department_name VARCHAR(20)
 );

INSERT INTO departments (department_id, department_name) VALUES
  (10, 'HR'),
  (20, 'Finance'),
  (30, 'Engineering'),
  (40, 'Marketing');
  
  
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    salary DECIMAL(10, 2),
    manager_id INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
    );
    
INSERT INTO employees (employee_id, first_name, last_name, salary, manager_id, department_id) VALUES
  (1, 'Alice', 'Johnson', 7000.00, NULL, 10),
  (2, 'Bob', 'Smith', 8500.00, 1, 10),
  (3, 'Charlie', 'Brown', 6000.00, 1, 20),
  (4, 'David', 'Wilson', 9500.00, 2, 20),
  (5, 'Eva', 'Davis', 5000.00, 2, 30),
  (6, 'Frank', 'Miller', 4800.00, 3, 30),
  (7, 'Grace', 'Taylor', 5300.00, 3, 40),
  (8, 'Hannah', 'Moore', 6200.00, 4, 40),
  (9, 'Ian', 'White', 5800.00, NULL, 30),
  (10, 'Jack', 'Hall', 5400.00, 9, 30);
  
SELECT employee_id FROM employees WHERE employee_id NOT IN (SELECT manager_id FROM employees);

SELECT * FROM employees WHERE employee_id NOT IN (SELECT manager_id FROM employees);

SELECT * FROM employees WHERE employee_id IN (SELECT manager_id FROM employees);

SELECT * FROM employees WHERE employee_id % 2 = 0;

SELECT COUNT(*) AS total_employees, 
AVG(salary) AS average_salary, 
MIN(salary) AS minimum_salary, 
MAX(salary) AS maximum_salary 
FROM employees;

SELECT * FROM departments
WHERE department_id IN (
SELECT department_id
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees)
);

SELECT AVG(salary) as Average_Salary FROM employees GROUP BY department_id;

SELECT * FROM departments WHERE department_id IN (SELECT department_id FROM employees WHERE salary > (SELECT AVG(salary) FROM employees));

SELECT d.department_id, d.department_name, AVG(e.salary) AS average_salary
FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY average_salary DESC;

SELECT d.department_id, d.department_name, COUNT(*) as COUNT_EMPLOYEES
FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT_EMPLOYEES > 1;

SELECT first_name, last_name, salary + salary * 0.15 AS INCREMENTED_SALARY FROM employees;

SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);