-- Step 1: Create the database
CREATE DATABASE Office;

-- Step 2: Use the database
USE Office;

-- Step 3: Create the table
CREATE TABLE office_employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    desig VARCHAR(50) NOT NULL,
    dept VARCHAR(50) NOT NULL,
    salary INT NOT NULL
);

-- Step 4: Insert 10 employee records
INSERT INTO office_employee (fname, lname, desig, dept, salary) VALUES
('Amit', 'Sharma', 'Manager', 'Sales', 55000),
('Priya', 'Verma', 'HR Executive', 'HR', 40000),
('Rohan', 'Kumar', 'Developer', 'IT', 60000),
('Sneha', 'Gupta', 'Designer', 'Design', 45000),
('Vikas', 'Rai', 'Team Lead', 'IT', 70000),
('Neha', 'Singh', 'Accountant', 'Finance', 50000),
('Ankit', 'Yadav', 'Support Engineer', 'Support', 42000),
('Meena', 'Joshi', 'Developer', 'IT', 58000),
('Suresh', 'Mishra', 'Clerk', 'Admin', 30000),
('Kiran', 'Patel', 'Marketing Head', 'Marketing', 65000);

-- Step 5: View the inserted data
SELECT * FROM office_employee;

-- How to see the distinct department from the table:
select distinct dept from  office_employee;
-- How to display high salary first :
select * from office_employee order by salary desc;
select dept, count(fname) from office_employee group by dept;