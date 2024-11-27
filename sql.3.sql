CREATE DATABASE EmployeesManagement;
USE EmployeesManagement;
CREATE TABLE Departments (id INT PRIMARY KEY AUTO_INCREMENT,name VARCHAR(50) NOT NULL);
CREATE TABLE Employees (id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL CHECK (age > 18),  
    gender VARCHAR(10) DEFAULT 'Unknown', 
    salary INT NOT NULL CHECK (salary > 30000), 
    department_id INT,
    email VARCHAR(100) UNIQUE,  
    FOREIGN KEY (department_id) REFERENCES Departments(id));
CREATE TABLE Projects (id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    budget INT NOT NULL CHECK (budget > 10000) );
CREATE TABLE Employee_Projects (employee_id INT,
    project_id INT,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(id),
    FOREIGN KEY (project_id) REFERENCES Projects(id));
CREATE TABLE Attendance (id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    date DATE NOT NULL,
    status ENUM('Present', 'Absent', 'On Leave'),
    FOREIGN KEY (employee_id) REFERENCES Employees(id));
    
 INSERT INTO Departments (name)VALUES ('IT'), ('HR'), ('Finance'), ('Sales');
select*from departments;
INSERT INTO Employees (name, age, gender, salary, department_id, email)VALUES ('John ', 30, 'Male', 45000, 1, 'john@example.com'),('Jane Smith', 35, 'Female', 54000, 2, 'janesmith@example.com'),('Robert Brown', 40, 'Male', 60000, 3, 'robertbrown@example.com'),('Emily White', 28, 'Female', 35000, 4, 'emilywhite@example.com');
select*from employees;
INSERT INTO Projects (name, budget)VALUES ('Project A', 60000),('Project B', 15000),('Project C', 84000),('Project D', 55000);
select*from projects;

CREATE TABLE Employee_Projects (
    employee_id INT,
    project_id INT,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(id),
    FOREIGN KEY (project_id) REFERENCES Projects(id)
);

INSERT INTO Employee_Projects (employee_id, project_id)VALUES (1, 1),(2, 2),  (3, 3),  (4, 4);  
select*from employee_projects;

INSERT INTO Attendance (employee_id, date, status)VALUES (1, '2024-10-01', 'Present'),(2, '2024-10-01', 'Absent'),(3, '2024-10-01', 'On Leave'),(4, '2024-10-01', 'Present');
select*from attendance;

SELECT * FROM Employees;

SELECT e.name, e.salary FROM Employees e JOIN Departments d ON e.department_id = d.id WHERE d.name = 'IT';

select*from projects where budget > 50000;

SELECT e.name AS Employee, p.name AS Project FROM Employees e JOIN Employee_Projects ep ON e.id = ep.employee_id JOIN Projects p ON ep.project_id = p.id;

SELECT d.name AS Department, COUNT(e.id) AS EmployeeCount FROM Departments d LEFT JOIN Employees e ON d.id = e.department_id GROUP BY d.name;

SELECT * FROM Employees WHERE salary > 50000;

SELECT * FROM Attendance WHERE employee_id = 1;

UPDATE Employees e JOIN Departments d ON e.department_id = d.id SET e.salary = e.salary * 1.10 WHERE d.name = 'HR';

select *from employee join department on e.department_id=d.id where d.name='HR';
SELECT * FROM Employees WHERE department_id IN (SELECT id FROM Departments WHERE name = 'HR') LIMIT 0, 2000;

#to check duplicate record
SELECT * FROM Departments WHERE name = 'HR';


UPDATE Employees SET department_id = 3  WHERE id = 1; 
SELECT * FROM Employees WHERE id = 1;

DELETE FROM attendance WHERE employee_id = 4;
DELETE FROM Employees WHERE id = 4;
DELETE FROM employee_projects WHERE employee_id = 4;

select*from employees;

DELETE FROM employee_projects WHERE project_id = 2;
DELETE FROM Projects WHERE id = 2;  
select*from projects;















