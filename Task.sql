-- Create Table
CREATE TABLE Departments (
    dep_id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(100) NOT NULL            
);
CREATE TABLE Employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,            
    salary DECIMAL(10, 2) NOT NULL,        
    birthday DATE NOT NULL,                
    dep_id INT,                            
    FOREIGN KEY (dep_id) REFERENCES Departments(dep_id) 
);
-- INSERT Table
INSERT INTO Departments (name) 
VALUES ('IT'), ('HR'), ('Finance');

INSERT INTO Employees (name, salary, birthday, dep_id) 
VALUES 
('Ali', 5000.00, '1990-01-01', 1),
('Sara', 6000.00, '1985-05-10', 2), 
('Reza', 5500.00, '1992-03-15', 1); 

--SELECT

SELECT 
    Employees.name AS Employee_Name
FROM 
    Employees
WHERE 
    Employees.dep_id = 1
ORDER BY 
    Employees.name; 
---------------------------------
SELECT 
    Employees.name AS Employee_Name, 
    Employees.salary AS Salary, 
    Employees.birthday AS Birthday
FROM 
    Employees
WHERE 
    Employees.dep_id = 1;
---------------------------------
SELECT 
    Employees.name AS Employee_Name, 
    Employees.salary AS Salary
FROM 
    Employees
WHERE 
    Employees.dep_id = 1
    AND Employees.salary > 100;





