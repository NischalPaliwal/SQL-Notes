CREATE TABLE employee (
E_No INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
E_Name VARCHAR(50) NOT NULL,
E_Address VARCHAR(50) NOT NULL,
Dept_No VARCHAR(50) NOT NULL,
Dept_Name VARCHAR(50) NOT NULL,
Job_Id INT NOT NULL,
Designation VARCHAR(50) NOT NULL,
Salary INT NOT NULL,
Working_For VARCHAR(50) DEFAULT NULL,
Joining_Date DATE DEFAULT '2002-04-02'
);

INSERT INTO employee (E_Name, E_Address, Dept_No, Dept_Name, Job_Id, Designation, Salary, Working_For, Joining_Date) VALUES
('John Doe', '123 Elm St', 'D001', 'Sales', 101, 'Manager', 75000, 'Manager', '1981-04-02'),
('Jane Smith', '456 Oak St', 'D002', 'Marketing', 102, 'IT Engineer', 65000, 'Manager', '1894-04-02'),
('Alice Johnson', '789 Pine St', 'D001', 'Sales', 103, 'Sales Associate', 50000, 'Manager', '1995-04-02'),
('Bob Brown', '321 Maple St', 'D003', 'IT', 104, 'Software Engineer', 80000, 'Manager', '2000-04-02'),
('Charlie Davis', '654 Cedar St', 'D004', 'HR', 105, 'Manager', 70000, 'Manager', '1984-04-02'),
('Diana Evans', '987 Birch St', 'D002', 'Marketing', 106, 'Content Creator', 55000, 'Manager', '1984-04-02'),
('Ethan White', '135 Spruce St', 'D003', 'IT', 107, 'Manager', 72000, 'Manager' , '1984-04-02'),
('Fiona Green', '246 Willow St', 'D005', 'Finance', 108, 'Financial Analyst', 68000, 'Manager', '2002-04-02'),
('George Black', '369 Cherry St', 'D001', 'Sales', 109, 'Manager', 60000, 'Manager', '1984-04-02'),
('Hannah Blue', '159 Ash St', 'D004', 'HR', 110, 'IT Engineer', 70000, 'Manager', '1984-04-02');

SELECT * FROM employee WHERE Designation = 'Manager';

SELECT * FROM employee WHERE Working_For = 'Manager';

SELECT * FROM employee WHERE Salary > 40000;

SELECT * FROM employee ORDER BY Salary DESC;

SELECT Dept_Name, Salary FROM employee;

SELECT * FROM employee WHERE Designation = 'Financial Analyst' OR Designation = 'Content Creator';

SELECT * FROM employee WHERE Dept_No = 'D001' OR Dept_No = 'D004';

SELECT * FROM employee WHERE E_Name LIKE 'J%';

SELECT * FROM employee WHERE Designation <> "Manager";

SELECT * FROM employee WHERE E_Name LIKE 'H%';

SELECT * FROM employee WHERE Joining_Date > '1981-01-01';

SELECT * 
FROM employee 
WHERE Salary > (SELECT MIN(Salary) FROM employee WHERE Designation = 'IT Engineer');