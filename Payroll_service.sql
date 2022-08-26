-----UC-1---------

create database payroll_service

select name from sys.databases

use payroll_service

------UC-2------

create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(100) not null,
salary money not null,
start_date date not null
)

------UC-3------

insert into employee_payroll values
('Bill',10000.0,'2019-01-05'),
('Terisa',23000.0,'2017-08-12'),
('Charlie',15000.0,'2018-06-25')

-------UC-4----

select * from employee_payroll