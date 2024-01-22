CREATE database EMPLOYEE;
USE EMPLOYEE;

create table employ
(
	e_id int not null,
    e_name varchar(20),
    e_salary int,
    e_age int,
    e_gender varchar(10),
    e_department varchar(20),
    primary key(e_id)
);
    
insert into employ values(1,'Sam',95000,30,'Male','Operations');
insert into employ values(2,'Anne',35000,26,'Female','Support');
insert into employ values(3,'Julie',60000,27,'Female','Analytics');
insert into employ values(4,'Matte',75000,31,'Male','Sales');

describe employ;

select e_name from employ;
select e_age from employ;
select e_name,e_salary,e_gender from employ;
select * from employ;

select distinct e_gender from employ;
select e_gender from employ;

/*queries*/
select * from employ where e_gender='Female';
select * from employ where e_age<30;
select * from employ where e_salary<50000;

select * from employ where e_gender='Male' AND e_salary>80000;
select * from employ where e_department='Operations' AND e_salary>90000;
select * from employ where e_department='Operations' OR e_department='Sales';
select * from employ where not e_gender='Female';

select * from employ where e_name LIKE 'J%';
select * from employ where e_age BETWEEN 25 AND 30;

select MIN(e_age) from employ;
select MAX(e_age) from employ;
select COUNT(*) from employ where e_gender='Male';
select SUM(e_salary) from employ;
select AVG(e_age) from employ;

select '     sapataaaaa'
select LTRIM('    sapataaaaa')

select 'THIS IS A LAB'
select lower('THIS IS A LAB')

select 'THIS IS A LAB'
select upper('this is lab')

select 'THIS is A LAB'
select reverse('THIS as A LAB')

select 'THIS IS A LAB'
select substring('THIS IS A LAB',5,7)

select * from employ order by e_salary;
select TOP 2 * from employ;
select TOP 3 * from employ order by e_age DESC;
