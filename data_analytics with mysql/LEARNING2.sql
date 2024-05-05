show databases;
use school;
show tables;
select * from students;

-- Group by

select class, count(*) from students group by class;
select age, count(*) from students group by age;

-- Having clause

select class, count(*) from students group by class having count(*) < 3;

select age, count(*) from students group by age having count(*) <3;

select * from subjects;

use onlineshop;
show tables;
select * from items;

select category , count(*) from items group by category;
select category, count(*) from items group by category having count(*) <3;

select price, count(*) from items group by price;
select price, count(*) from items group by price having count(*) <2;

-- order by
use school;
show tables;

select * from students;
select * from students order by first_name, last_name;
select * from students order by age;
select * from students order by age desc;

-- LIMIT or TOP CLAUSE ( to show 'n' no.of rows ;'limit 'n')

select * from students limit 4;

-- SQL WILDCARDS

select * from students where first_name like 'ra%';
select * from students where last_name like 'p__';
select * from students where last_name like 'p_';

-- ALIASES

select p.first_name, p.last_name from students as p;
select count(*) from students;
select count(*) as 'Total' from students;
select concat(first_name,' ',last_name) as 'Full_Name' from students;

-- sql date functions

select now();
select curdate();
select curtime();

use onlineshop;
select * from orders;
select * from orders where order_date ='2020-05-09';

-- insert into select statement
use school;
select * from students;