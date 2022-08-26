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