use office;
create table contacts(
name varchar(50) not null,
mob varchar(15) unique check (length(mob)>=10)
);
insert into contacts
values (1234567890, 1424242515);
alter table office_employee
add column city varchar(50);
select*from office_employee;
alter table office_employee
rename column fname to FullName;
