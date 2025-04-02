CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName  VARCHAR(50),
Department VARCHAR(50),
Email VARCHAR(50)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Email) VALUES
(1, 'John', 'Doe', 'IT', 'john.doe@company.com'),
(2, 'Alice', 'Smith', 'HR', 'alice.smith@company.com'),
(3, 'Robert', 'Brown', 'Finance', 'robert.brown@company.com'),
(4, 'Mary', 'Johnson', 'IT', 'mary.john@company.com');

SELECT LENGTH(FirstName) FROM Employees WHERE EmployeeID = 3;
SELECT CONCAT(FirstName, ' ' , LastName) AS Full_Name FROM Employees WHERE EmployeeID = 4;
SELECT UPPER(Department) FROM Employees;
SELECT SUBSTRING(Department, 1, 3) FROM Employees;

CREATE TABLE EmployeesNew (
  EmployeeID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName  VARCHAR(50),
  Department VARCHAR(50),
  Salary DECIMAL(10, 2)
  );
  
  INSERT INTO EmployeesNew (EmployeeID, FirstName, LastName, Department, Salary) VALUES
(1, 'John', 'Doe', 'IT', 45000.00),
(2, 'Alice', 'Smith', 'HR', 70000.00),
(3, 'Robert', 'Brown', 'Finance', 80000.00),
(4, 'Mary', 'Johnson', 'IT', 90000.00);

UPDATE EmployeesNew 
SET Salary = 45678.54 WHERE EmployeeID = 1;

UPDATE EmployeesNew 
SET Salary = 70545.23 WHERE EmployeeID = 2;

UPDATE EmployeesNew 
SET Salary = 45676.51 WHERE EmployeeID = 3;

UPDATE EmployeesNew 
SET Salary = 46778.89 WHERE EmployeeID = 4;

SELECT ROUND(Salary) FROM EmployeesNew;
SELECT FLOOR(Salary) FROM EmployeesNew;
SELECT CEIL(Salary) FROM EmployeesNew;
SELECT MOD(Salary, 5) FROM EmployeesNew;