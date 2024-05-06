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