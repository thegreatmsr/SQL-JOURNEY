USE COMPANYDB;
SHOW tables;
select *from customers;
select *from employee;
create table customers2(
acc_no int primary key,
name varchar(50) not null,
acc_type  varchar(50) not null default "Savings"
);
desc customers2;
insert into customers2 (acc_no, name)
values (1001, "Raju"),  (1002, "Ramu Kaka");
select * from customers;
insert into customers2 (acc_no, name)
values (1001, "Raju");

