-- Find employees from the paritcular department
-- For this we use in or not in 
use office;
select* from office_employee
where dept in ('IT' , 'admin');
select *from office_employee
where salary between 40000 and 50000;
select fname, salary,
case
when salary>=50000 then 'higher salary'
else 'low salary'
end as 'salary category'
from office_employee;


