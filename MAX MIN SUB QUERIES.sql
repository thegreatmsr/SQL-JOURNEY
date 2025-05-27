use office;
select max(salary) from office_employee;
select emp_id, fname, salary from office_employee
where salary =(select max(salary) from office_employee);
select sum(salary) from office_employee;
select avg(salary) from office_employee;
select dept, sum(salary) from office_employee
group by dept;
-- Find the total number of employees in the database 

select count(emp_id) from office_employee;

-- Find the total number of employees in each department
select *from office_employee;
select dept, count(emp_id) from office_employee
group by dept;
-- Find the highest salary person with his all data
select emp_id, fname, lname, dept, desig, salary from office_employee
where salary= (select max(salary) from office_employee);

