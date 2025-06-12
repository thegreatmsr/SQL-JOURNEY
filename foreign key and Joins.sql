create table customers(
cust_id int auto_increment primary key,
name varchar(50),
email varchar(50)
);

create table orders(
orderID int auto_increment primary key,
date date,
amount decimal (10,2),
cust_id int,
foreign key (cust_id) references customers(cust_id)
);
insert into customers(name, email)
values ('Raju', 'the@gmail.com'),('Mohan', 'theabc@gmail.com');
insert into orders
(date, amount, cust_id)
values
(curdate(),105.45,1);
select *from customers;
insert into orders
(date, amount, cust_id)
values
(curdate(),500.45,1);
insert into orders
(date, amount, cust_id)
values
(curdate(),500.45,2);
insert into customers(name, email)
values ('balbir', 'the12@gmail.com'),('Mehak', 'theabwdc@gmail.com');
-- For seeing the combined data we use the conncepts of joins
-- 1. Cross Join:- Every row is selected from each table and get combined
-- what is inner Join
insert into orders
(date, amount, cust_id)
values
(curdate(),500.45,3);

select *from customers
inner join orders
on orders.cust_id=customers.cust_id;
select name, sum(amount) from customers
inner join orders
on orders.cust_id=customers.cust_id
group by name;
select *from customers
left join orders
on orders.cust_id=customers.cust_id;

select name, ifnull(sum(amount),0) from customers
left join orders
on orders.cust_id=customers.cust_id
group by name;






