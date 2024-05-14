SHOW databases;
create database JOINS;
use JOINS;

create table table1(
column1 int
);
insert into table1 values
(11),(12),(13),(14),(15);

select * from table1;

create table table2(
column2 int
);
insert into table2 values
(12),(15),(18);
select * from table2;

-- inner join

select * from table1 inner join table2 on table1.column1 = table2.column2;

use company;
show tables;
select * from employees;
select * from clients;
select * from projects;

select * from employees inner join projects on employees.emp_id = projects.emp_id;

select * from clients inner join projects on clients.client_id = projects.client_id;

-- left outer join

use joins;

select * from table1 left outer join table2 on table1.column1=table2.column2;

select * from table2 left outer join table1 on table2.column2 = table1.column1;

use company;

select * from employees left outer join projects on employees.emp_id = projects.emp_id;

-- right outer join

select * from employees right outer join projects on employees.emp_id = projects.emp_id;

use joins;

select * from table1 right outer join table2 on table1.column1 = table2.column2;

-- full outer join( UNION)

select * from table1 left outer join table2 on table1.column1 = table2.column2 union select * from table1 right outer join table2 on table1.column1 = table2.column2;

-- cross join

select * from table1 cross join table2;

select * from table2 cross join table1;

-- UNION and UNION ALL

select * from table1 union select * from table2;

select * from table1 union all select * from table2;

-- VIEW

use school;

select * from students where age > 25;

create view age_greater_than as select* from students where age >25;

select * from age_greater_than;

-- derived tables or inline views

use company;
select * from employees;
select * from projects;

select employees.name, employees.jobtitle, projects.title from employees inner join
projects on employees.emp_id = projects.emp_id;

select name , title from (select employees.name, employees.jobtitle, projects.title from employees inner join
projects on employees.emp_id = projects.emp_id) as active_projects;

select * from (select employees.name, employees.jobtitle, projects.title from employees inner join
projects on employees.emp_id = projects.emp_id) as active_projects;

use company;
select * from clients;
select clients.name, projects.start_date, projects.title from clients inner join projects on clients.client_id = projects.client_id;
select * from (select clients.name, projects.start_date, projects.title from clients inner join projects on clients.client_id = projects.client_id) as client;

use school;

-- Mysql functions

-- FIRST()  and LAST() fun;

select * from students;
select first_name from students order by first_name limit 1;

select first_name from students order by first_name desc limit 1;

select last_name  from students order by last_name limit 1;

-- SUM()

select sum(age) from students;

select sum(first_name) from students;  -- (returns 0 )

-- MIN()

select min(age) from students;

select min(class) from students;

select min(first_name) from students;

select min(last_name) from students;

-- MAX()

select max(age) from students;

select max(class) from students;

select max(first_name) from students;

-- AVG()

select avg(age) from students;

-- ucase(upper case) and lcase(lower case)

select ucase(first_name) from students;

select lcase(first_name) from students;

-- MID()

select mid(first_name,2,3) from students;

select mid(first_name,2) from students;

-- LENGTH()

select length(first_name) from students;

-- ROUND()

select round(10.566666666667,3);

select round(3.14159265359,2);

-- FORMAT()  [ same as round fun.]

select format(10.5666666666,3); 

-- SUBSTRING()

select substring(first_name from 2 for 3) from students;

select substr(first_name from 2 for 3)from students;

-- COALESCE()

select coalesce(1,2,3,4,5);

select coalesce(42,56,78);

select coalesce(null,null,null,2,3,4);

select coalesce(null,null,null);

-- CHAR LENGTH()

select char_length(first_name) from students;

select char_length(age) from students;

-- CAST()

select(10.5556);
select cast(10 as decimal (4,2));
select cast(10.389 as char(5));
select cast(10.782452 as char(5));
select cast('2017-08-08' as datetime);
select cast('2020-09-13' as datetime);

-- CASE()

select case(3)
when 1 then 'one'
when 2 then 'two'
when 3 then 'three'
when 4 then 'four'
else 'no match'
end;

use school;
select * from students;

select first_name, age, case
when (age = 23) then 'twenty_three'
when (age =25) then 'twenty_five'
when (age = 28) then 'twenty_eight'
else null
end
as 'age as text' from students;

-- NULL IF()

select nullif(10,10);

select nullif(10,9);