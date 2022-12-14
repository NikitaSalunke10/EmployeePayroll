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

-------UC-5-----

select salary from employee_payroll where name='bill'

select name from employee_payroll where start_date between '2018-01-01' and getdate()

-------UC-6------

alter table employee_payroll add gender char(1)

update employee_payroll set gender='M' where name in ('Bill','Charlie')
update employee_payroll set gender='F' where name='Terisa'

-------UC-7------

select gender,sum(salary) from employee_payroll group by gender
select gender,avg(salary) from employee_payroll group by gender
select min(salary) from employee_payroll where gender='M'
select max(salary) from employee_payroll where gender='M'
select gender,count(salary) from employee_payroll group by gender

------UC-8------

alter table employee_payroll add
phone varchar(15),
address varchar(100) default 'India' not null,
department varchar(20) default 'CS' not null

------UC-9------

alter table employee_payroll add
basic_pay money,
deduction money,
taxable_pay money,
incometax money,
net_pay money

-----UC-10------

update employee_payroll set department='sales' where name='Terisa'

insert into employee_payroll values
('Terisa',23000.0,'2017-09-12','F',NULL,'India','Marketing',null,null,null,null,null)
