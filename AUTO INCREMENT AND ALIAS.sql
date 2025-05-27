USE companydb;
create table customers3(
acc_no int primary key auto_increment,
name varchar(50) not null,
acc_type varchar(50) default "Savings"
);
insert into customers3(acc_no, name)
values (1, "Ram"), (2, "Sam");
desc customers3;
select * from customers3;
insert into customers3(name)
values ("Mohit");
select * from customers3;

-- Alias
select acc_no as "Account No", name as "Customer Name" from customers3;








