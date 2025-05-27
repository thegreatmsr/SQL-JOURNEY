create database employee;
use  employee;
create table employee_information (
emp_id int primary key not null auto_increment
fname varchar (50) not null,
lname varchar (50) not null,
desig varchar (50) not null,
dept varchar (50) not null,
);
insert into employee_information(emp_id, fname, lname, desig, dept)
values(101, 'Ram', 'Raja', 'Manager', 'Loan'), (102,'Shyam', 'Raja', 'Head', 'Loan'), (103,'Ramu', 'Kaka', 'Head', 'HR'), (104,'Himesh', 'Raja', 'Deputy Minister', 'Loan');
select* from employee_information;
select concat_ws(':',emp_id, fname, lname, desig, dept) from employee_information;
select concat_ws(':',emp_id, concat(fname, ' ', lname), desig, dept) from employee_information;
select concat_ws(':',emp_id, fname, lname, UPPER(desig), dept)from employee_information;

select distinct dept from employee_information;
select * from employee_information order by fname, lname;
select * from employee_information order by fname desc;
select* from employee_information
where fname like '____';
alter table employee_information
add column 
salary int not null default 35000;
select*from employee_information;
UPDATE employee_information
SET salary = 200000
WHERE emp_id = 101;
UPDATE employee_information
SET salary = 50000
WHERE emp_id = 102;
UPDATE employee_information
SET salary = 560000
WHERE emp_id = 103;
UPDATE employee_information
SET salary = 55000
WHERE emp_id = 104;
select *from employee_information limit 1,3;
select count(DISTINCT dept) from employee_information;




