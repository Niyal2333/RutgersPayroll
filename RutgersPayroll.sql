-- Step 1: Create and Select Database
CREATE DATABASE RutgersPayroll;
USE RutgersPayroll;

-- Step 2: Create Tables
CREATE TABLE IF NOT EXISTS DeptTable (
  DeptID INT PRIMARY KEY,
  DeptName VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS EmployeeTable (
  EmpID INT PRIMARY KEY,
  DeptID INT,
  FirstName VARCHAR(255),
  LastName VARCHAR(255),
  JobTitle VARCHAR(255),
  HourlyWage DECIMAL(10, 2),
  FOREIGN KEY (DeptID) REFERENCES DeptTable(DeptID)
);

CREATE TABLE IF NOT EXISTS WorkRecordTable (
  WorkID INT PRIMARY KEY,
  EmpID INT,
  WorkDate DATE,
  WorkHours DECIMAL(5, 2),
  FOREIGN KEY (EmpID) REFERENCES EmployeeTable(EmpID)
);

CREATE TABLE IF NOT EXISTS SalaryTable (
  SalaryID INT PRIMARY KEY,
  EmpID INT,
  PayDate DATE,
  GrossSalary DECIMAL(10, 2),
  TaxAmount DECIMAL(10, 2),
  NetSalary DECIMAL(10, 2),
  FOREIGN KEY (EmpID) REFERENCES EmployeeTable(EmpID)
);

-- Step 3: Insert Sample Data
-- Insert departments
INSERT INTO DeptTable (DeptID, DeptName) VALUES
(1, 'Administration'),
(2, 'Event Management'),
(3, 'Maintenance');

-- Insert employees
INSERT INTO EmployeeTable (EmpID, DeptID, FirstName, LastName, JobTitle, HourlyWage) VALUES
(2208004201, 3918001, 'John', 'Smith', 'Area Manager', 18.50),
(208004202, 3918002, 'Jane', 'Doe', 'Area Manager', 18.50),
(208004203, 3918003, 'Michael','Johnson', 'Building Manager', 18.50),
(208004204, 3918004, 'Emily', 'Davis','Building Manager', 18.50),
(208004205, 3918005, 'David', 'Kim', 'Building Manager', 18.50),
(208004206, 3918006, 'Jessica', 'Wang', 'Building Manager', 18.50),
(208004207, 3918007, 'Chris', 'Patel', 'Building Manager', 18.50),
(208004208, 3918008, 'Ashley', 'White', 'Building Manager', 18.50),
(208004209, 3918009, 'Brian', 'Lee', 'Building Manager', 18.50),
(208004210, 3918010, 'Olivia', 'Brown', 'Building Manager', 18.50),
(208004211, 3918011, 'Kevin', 'Garcia', 'Building Manager', 18.50),
(208004212, 3918012, 'Sophia', 'Martinez', 'Building Manager', 18.50),
(208004213, 3918013, 'Jason', 'Nguyen', 'Building Manager', 18.50),
(208004214, 3918014, 'Amanda', 'Taylor', 'Building Manager', 18.50),
(208004215, 3918015, 'Justin', 'Anderson', 'Operation Assistant', 15.50),
(208004216, 3918016, 'Rachel', 'Thomas', 'Operation Assistant', 15.50),
(208004217, 3918017, 'Andrew', 'Jackson', 'Operation Assistant', 15.50),
(208004218, 3918018, 'Lauren', 'Harris', 'Operation Assistant', 15.50),
(208004219, 3918019, 'Ethan', 'Martin', 'Operation Assistant', 15.50),
(208004220, 3918020, 'Brianna', 'Thompson','Operation Assistant', 15.50),
(208004221, 3918021, 'Jeremy', 'Garcia', 'Operation Assistant', 15.50),
(208004222, 3918022, 'Megan', 'Martinez', 'Operation Assistant', 15.50),
(208004223, 3918023, 'Brandon', 'Robinson', 'Operation Assistant', 15.50),
(208004224, 3918024, 'Kayla', 'Clark', 'Operation Assistant', 15.50),
(208004225, 3918025, 'Stephen', 'Rodriguez', 'Operation Assistant', 15.50),
(208004226, 3918026, 'Sara', 'Lewis', 'Operation Assistant', 15.50),
(208004227, 3918027, 'Ryan', 'Lee', 'Operation Assistant', 15.50),
(208004228, 3918028, 'Heather','Walker', 'Operation Assistant', 15.50),
(208004229, 3918029, 'Aaron', 'Hall', 'Operation Assistant', 15.50),
(208004230, 3918030, 'Emily', 'Allen', 'Operation Assistant', 15.50),
(208004231, 3918031, 'Nicholas', 'King', 'Operation Assistant', 15.50),
(208004232, 3918032, 'Tiffany', 'Wright', 'Operation Assistant', 15.50),
(208004233, 3918033, 'Eric', 'Scott', 'Guest Service Assistant', 15.50),
(208004234, 3918034, 'Jasmine', 'Torres', 'Guest Service Assistant', 15.50),
(208004235, 3918035, 'Sean', 'Nguyen', 'Guest Service Assistant', 15.50),
(208004236, 3918036, 'Kimberly', 'Hill', 'Guest Service Assistant', 15.50),
(208004237, 3918037, 'Kyle', 'Flores', 'Guest Service Assistant', 15.50),
(208004238, 3918038, 'Maria', 'Adams', 'Guest Service Assistant', 15.50),
(208004239, 3918039, 'Joshua', 'Baker', 'Guest Service Assistant', 15.50),
(208004240, 3918040, 'Michelle', 'Gonzalez', 'Info Desk Assistant', 15.50),
(208004241, 3918041, 'Adam', 'Nelson', 'Info Desk Assistant', 15.50),
(208004242, 3918042, 'Danielle', 'Carter', 'Info Desk Assistant', 15.50),
(208004243, 3918043, 'Brian', 'Mitchell', 'Info Desk Assistant', 15.50),
(208004244, 3918044, 'Chelsea', 'Perez', 'Info Desk Assistant', 15.50),
(208004245, 3918045, 'Derek', 'Roberts', 'Info Desk Assistant', 15.50),
(208004246, 3918046, 'Katie', 'Turner', 'Info Desk Assistant', 15.50),
(208004247, 3918047, 'Nathan', 'Phillips', 'Info Desk Assistant', 15.50),
(208004248, 3918048, 'Alyssa', 'Evans', 'Info Desk Assistant',15.50),
(209004249, 3918049, 'Jane', 'Doe', 'Event Coordinator', 20.00),

-- Insert work records
INSERT INTO WorkRecordTable (WorkID, EmpID, WorkDate, WorkHours) VALUES
(1, 1, '2023-10-20', 8),
INSERT INTO WorkRecordTable (WorkID, EmpID, WorkDate, WorkHours) VALUES
(29234401, 208004201, '2023-10-01', 12),
(29234402, 208004202, '2023-10-01', 13),
(29234403, 208004203, '2023-10-02', 14),
(29234404, 208004204, '2023-10-02', 15),
(29234405, 208004205, '2023-10-03', 16),
(29234406, 208004206, '2023-10-03', 17),
(29234407, 208004207, '2023-10-04', 18),
(29234408, 208004208, '2023-10-04', 19),
(29234409, 208004209, '2023-10-05', 20),
(29234410, 208004210, '2023-10-05', 12),
(29234411, 208004211, '2023-10-06', 13),
(29234412, 208004212, '2023-10-06', 14),
(29234413, 208004213, '2023-10-07', 15),
(29234414, 208004214, '2023-10-07', 16),
(29234415, 208004215, '2023-10-08', 17),
(29234416, 208004216, '2023-10-08', 18),
(29234417, 208004217, '2023-10-09', 19),
(29234418, 208004218, '2023-10-09', 20),
(29234419, 208004219, '2023-10-10', 12),
(29234420, 208004220, '2023-10-10', 13),
(29234421, 208004221, '2023-10-11', 14),
(29234422, 208004222, '2023-10-11', 15),
(29234423, 208004223, '2023-10-12', 16),
(29234424, 208004224, '2023-10-12', 17),
(29234425, 208004225, '2023-10-13', 18),
(29234426, 208004226, '2023-10-13', 19),
(29234427, 208004227, '2023-10-14', 20),
(29234428, 208004228, '2023-10-14', 12),
(29234429, 208004229, '2023-10-15', 13),
(29234430, 208004230, '2023-10-15', 14),
(29234431, 208004231, '2023-10-16', 15),
(29234432, 208004232, '2023-10-16', 16),
(29234433, 208004233, '2023-10-17', 17),
(29234434, 208004234, '2023-10-17', 18),
(29234435, 208004235, '2023-10-18', 19),
(29234436, 208004236, '2023-10-18', 20),
(29234437, 208004237, '2023-10-19', 12),
(29234438, 208004238, '2023-10-19', 13),
(29234439, 208004239, '2023-10-20', 14),
(29234440, 208004240, '2023-10-20', 15),
(29234441, 208004241, '2023-10-21', 16),
(29234442, 208004242, '2023-10-21', 17),
(29234443, 208004243, '2023-10-22', 18),
(29234444, 208004244, '2023-10-22', 19),
(29234445, 208004245, '2023-10-23', 20),
(29234446, 208004246, '2023-10-23', 12),
(29234447, 208004247, '2023-10-24', 13),
(29234448, 208004248, '2023-10-24', 14),
(29234449, 208004249, '2023-10-25', 15);

-- Insert payroll data
INSERT INTO SalaryTable (SalaryID, EmpID, PayDate, GrossSalary, TaxAmount, NetSalary) VALUES
(1, 1, '2023-10-20', 240, 36, 204),
INSERT INTO SalaryTable (SalaryID, EmpID, PayDate, GrossSalary, TaxAmount, NetSalary) VALUES
(49233001, 208004201, '2023-10-01', 222.00, 33.30, 188.70),
(49233002, 208004202, '2023-10-01', 240.50, 36.08, 204.42),
(49233003, 208004203, '2023-10-02', 259.00, 38.85, 220.15),
(49233004, 208004204, '2023-10-02', 277.50, 41.63, 235.88),
(49233005, 208004205, '2023-10-03', 296.00, 44.40, 251.60),
(49233006, 208004206, '2023-10-03', 314.50, 47.18, 267.33),
(49233007, 208004207, '2023-10-04', 333.00, 49.95, 283.05),
(49233008, 208004208, '2023-10-04', 351.50, 52.73, 298.78),
(49233009, 208004209, '2023-10-05', 370.00, 55.50, 314.50),
(49233010, 208004210, '2023-10-05', 222.00, 33.30, 188.70),
(49233011, 208004211, '2023-10-06', 240.50, 36.08, 204.42),
(49233012, 208004212, '2023-10-06', 259.00, 38.85, 220.15),
(49233013, 208004213, '2023-10-07', 277.50, 41.63, 235.88),
(49233014, 208004214, '2023-10-07', 296.00, 44.40, 251.60),
(49233015, 208004215, '2023-10-08', 314.50, 47.18, 267.33),
(49233016, 208004216, '2023-10-08', 333.00, 49.95, 283.05),
(49233017, 208004217, '2023-10-09', 351.50, 52.73, 298.78),
(49233018, 208004218, '2023-10-09', 370.00, 55.50, 314.50),
(49233019, 208004219, '2023-10-10', 222.00, 33.30, 188.70),
(49233020, 208004220, '2023-10-10', 240.50, 36.08, 204.42),
(49233021, 208004221, '2023-10-11', 259.00, 38.85, 220.15),
(49233022, 208004222, '2023-10-11', 277.50, 41.63, 235.88),
(49233023, 208004223, '2023-10-12', 296.00, 44.40, 251.60),
(49233024, 208004224, '2023-10-12', 314.50, 47.18, 267.33),
(49233025, 208004225, '2023-10-13', 333.00, 49.95, 283.05),
(49233026, 208004226, '2023-10-13', 351.50, 52.73, 298.78),
(49233027, 208004227, '2023-10-14', 370.00, 55.50, 314.50),
(49233028, 208004228, '2023-10-14', 222.00, 33.30, 188.70),
(49233029, 208004229, '2023-10-15', 240.50, 36.08, 204.42),
(49233030, 208004230, '2023-10-15', 259.00, 38.85, 220.15),
(49233031, 208004231, '2023-10-16', 277.50, 41.63, 235.88),
(49233032, 208004232, '2023-10-16', 296.00, 44.40, 251.60),
(49233033, 208004233, '2023-10-17', 314.50, 47.18, 267.33),
(49233034, 208004234, '2023-10-17', 333.00, 49.95, 283.05),
(49233035, 208004235, '2023-10-18', 351.50, 52.73, 298.78),
(49233037, 208004237, '2023-10-19', 370.00, 55.50, 314.50),
(49233038, 208004238, '2023-10-19', 240.50, 36.08, 204.42),
(49233039, 208004239, '2023-10-20', 259.00, 38.85, 220.15),
(49233040, 208004240, '2023-10-20', 277.50, 41.63, 235.88),
(49233041, 208004241, '2023-10-21', 296.00, 44.40, 251.60),
(49233042, 208004242, '2023-10-21', 314.50, 47.18, 267.33),
(49233043, 208004243, '2023-10-22', 333.00, 49.95, 283.05),
(49233044, 208004244, '2023-10-22', 351.50, 52.73, 298.78),
(49233045, 208004245, '2023-10-23', 370.00, 55.50, 314.50),
(49233046, 208004246, '2023-10-23', 240.50, 36.08, 204.42),
(49233047, 208004247, '2023-10-24', 259.00, 38.85, 220.15),
(49233048, 208004248, '2023-10-24', 277.50, 41.63, 235.88),
(49233049, 208004249, '2023-10-25', 296.00, 44.40, 251.60);

-- Step 4: Analysis Queries
-- 1. Total payroll cost for a specific date
SELECT SUM(GrossSalary) as TotalPayrollCost FROM SalaryTable WHERE PayDate = '2023-10-20';

-- 2. Average hourly rate of employees
SELECT AVG(HourlyWage) as AverageHourlyRate FROM EmployeeTable;

-- 3. Employees working more than 8 hours on a specific date
SELECT et.FirstName, et.LastName, wr.WorkHours
FROM WorkRecordTable wr
JOIN EmployeeTable et ON wr.EmpID = et.EmpID
WHERE wr.WorkDate = '2023-10-20' AND wr.WorkHours > 8;

-- 4. Total number of employees in each department
SELECT dt.DeptName, COUNT(et.EmpID) as TotalEmployees
FROM DeptTable dt
LEFT JOIN EmployeeTable et ON dt.DeptID = et.DeptID
GROUP BY dt.DeptName;

-- 5. Employee with the highest gross pay
SELECT et.FirstName, et.LastName, st.GrossSalary as HighestGrossSalary
FROM SalaryTable st
JOIN EmployeeTable et ON st.EmpID = et.EmpID
WHERE st.GrossSalary = (SELECT MAX(GrossSalary) FROM SalaryTable