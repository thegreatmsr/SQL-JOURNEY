CREATE DATABASE TUTION;
SHOW DATABASES;
USE TUTION;
CREATE TABLE STUDENTS(
ID INT PRIMARY KEY,
NAME VARCHAR(50),
CLASS INT
);
INSERT INTO STUDENTS(ID, NAME, CLASS)
VALUES(101, "MOHIT", 5),(102, "ROHIT", 6),(103, "SOHIT", 7);
SELECT * FROM students;
SHOW CREATE TABLE STUDENTS;
SELECT * FROM STUDENTS;
UPDATE tution
SET CLASS = 9
WHERE ID = 101;
delete from students
where id =102;
show databases;
SELECT * FROM STUDENTS;
delete from students
where id =102;
select * from students;
drop table students;
select * from students;
show databases;
use companydb;
show tables;
desc employee;








