create table num1(
price decimal (5,2)
);
insert into num1
values
(122.34),
(234.23);
select * from num1;
-- Float takes upto 7 digits and takes 4 bytes of memory
-- Double takes upto 15 digits and takes 8 bytes of memory
create table num2(
f float,
d double
);
insert into num2 
values 
(1234.3222237,24354546.7896868968688);
select*from num2;
create table person(
joiningDate date,
JoiningTime time,
joiningDateTime datetime
);
desc person;
insert into person
values
('2022-07-08', '11:11:00', '2022-07-08 11:11:00');
select* from person;

