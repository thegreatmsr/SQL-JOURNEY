-- On delete cascade
drop table orders;
create table orders(
orderID int auto_increment primary key,
date date,
amount decimal (10,2),
cust_id int,
foreign key (cust_id) references customers(cust_id) on delete
cascade
);
insert into orders
(date, amount, cust_id)
values
(curdate(),500.45,1);
insert into orders
(date, amount, cust_id)
values
(curdate(),500.45,2);
insert into orders
(date, amount, cust_id)
values
(curdate(),500.45,2);
insert into orders
(date, amount, cust_id)
values
(curdate(),500.45,3);
select*from orders;
delete from customers
where name='mehak';
select*from customers;
select*from orders;

