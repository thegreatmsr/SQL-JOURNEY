show databases;
use office;
create table customer_information(
customerName varchar(50), 
customer_id int primary key not null auto_increment,
email varchar (50)
);
create table orders(
ord_id int auto_increment primary key,
Date date,
amount decimal(10,2),
customer_id int,
foreign key (customer_id) references customer_information(customer_id)
);
INSERT INTO customer_information (customer_id, customerName, email)
VALUES
  (1, 'Raju', 'Raju@gmail.com'),
  (2, 'Mohan', 'Mohan@gmail.com');
insert into orders(date,amount, customer_id)
values
(curdate(), 105.38, 1);
insert into orders(date,amount, customer_id)
values
(curdate(), 105.37, 1), (curdate(),109.78,1);
select * from orders;
insert into orders(date,amount, customer_id)
values
(curdate(), 105.38, 2);
select *from customer_information
inner join
orders
on orders.customer_id=customer_information.customer_id;
select *from customer_information
left join
orders
on orders.customer_id=customer_information.customer_id;







