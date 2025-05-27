CREATE DATABASE STOREDB;
CREATE DATABASE COMPANYDB;
DROP DATABASE STOREDB;
USE COMPANYDB;
CREATE TABLE EMPLOYEE(
id INT NOT NULL,
name VARCHAR  (100) NOT NULL
); 
USE COMPANYDB;
INSERT INTO EMPLOYEE(id, name)
VALUES (101, "RAHUL GUPTA CDS"),(102, "ROHANI GUPTA CDS");
SELECT * FROM employee;
SELECT name from employee;
SELECT * from employee where id =101;
desc EMPLOYEE;
USE Companydb;
create table customers(
id  int primary key,
name varchar(40) not null,
accountTable varchar(50) not null default 'Saving'
);
desc customers;
insert into customers (id, name)
values (101, 'Raju'), (102, "Raja");
select * from customers;





