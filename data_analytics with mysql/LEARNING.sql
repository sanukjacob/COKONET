SHOW databases;
create database SCHOOL;
USE SCHOOL;

create table STUDENTS(
STUDENT_ID INT NOT NULL PRIMARY KEY auto_increment,
FIRST_NAME varchar(20),
LAST_NAME varchar(20),
CLASS varchar(20),
AGE int
);
INSERT INTO STUDENTS(STUDENT_ID,FIRST_NAME,LAST_NAME,CLASS,AGE) values
(1,'RAHUL','MURALI','DATA ANALYTICS',24),
(2,'MANAV','PAVAN','DATA ANALYTICS',29),
(3,'PRAVEEN','MIDHUN','STATISTICALANALYTICS',23),
(4,'PRAVEENA','MIDHUN','STATISTICALANALYTICS',23),
(5,'RARIMA','P S','SAAP',30),
(6,'RAMYA','O','SAAP',28),
(7,'NAVAMI','PANICKAR','SPOKEN ENGLISH',23),
(8,'PRIYA','PARMAR','SPOKEN ENGLISH',25);

select * FROM STUDENTS;

create table TEACHERS(
TEACHER_ID int NOT NULL primary key auto_increment,
NAME varchar(30),
PHONE bigint
);
insert into TEACHERS(TEACHER_ID,NAME,PHONE)values
(1,'DHANYA VARGHESE',8734678890),
(2,'PREETHA NAIR',6778847865),
(3,'PRAVEENA PANICKER',6798453578),
(4,'NAVEEN PS',7899948989);
SELECT * FROM TEACHERS;

create table SUBJECTS(
SUBJECT_ID int NOT NULL primary key auto_increment,
TITLE varchar(30)
);
insert into SUBJECTS(SUBJECT_ID,TITLE)values
(1,'COK011'),
(2,'COK012'),
(3,'COK013'),
(4,'COK014');

select * FROM SUBJECTS;

create database COMPANY;
USE COMPANY;

create table EMPLOYEES(
EMP_ID int NOT NULL primary key auto_increment,
NAME varchar(30),
JOBTITLE varchar(30),
SALARY int
);
insert into EMPLOYEES(EMP_ID,NAME,JOBTITLE,SALARY)values
(1,'AARTI','SENIOR EXECUTIVE',4000),
(2,'SAHIL SAHEER','SENIOR EXECUTIVE',4200),
(3,'LOYD','SENIOR DATA ANALYST',5000),
(4,'JAVED','JUNIOR DATA ANALYST',3500),
(5,'ADARSH','JUNIOR DATA ANALYST',3500),
(6,'VISHAL','SENIOR DATA SCIENTIST',8000),
(7,'JYOTHI','JUNIOR DATA SCIENTIST',5000),
(8,'MAHA','SENIOR DATA ANALYST',5000),
(9,'SAAHIL','JUNIOR EXECUTIVE',2500),
(10,'JULIOT','JUNIOR EXECUTIVE',2500);
SELECT * FROM EMPLOYEES;

create table CLIENTS(
CLIENT_ID INT not null primary key auto_increment,
NAME varchar(30),
PHONE bigint,
ADDRESS varchar(40)
);
insert into CLIENTS(CLIENT_ID,NAME,PHONE,ADDRESS)values
(1,'IBM',5587654589,'USA'),
(2,'SYSCO',5589672319,'CALIFORNIA'),
(3,'DELL',5547277808,'TEXAS'),
(4,'ORACLE',5534852745,'USA');

select* from CLIENTS;

-- TABLES JUST FOR PRACTICE

create table PROJECTS(
PROJECT_ID INT NOT NULL primary key auto_increment,
TITLE varchar(40)
);
INSERT INTO PROJECTS(PROJECT_ID,TITLE)values
(1,'MARKET BASKET ANALYSIS'),
(2,'CUSTOMER SEGMENTATION'),
(3,'RECOMMENDER SYSTEMS'),
(4,'DATA VISUALIZATION');
 SELECT * FROM PROJECTS;

create database ONLINESHOP;
USE ONLINESHOP;

create table ITEMS(
ITEM_ID INT NOT NULL PRIMARY KEY auto_increment,
CATEGORY varchar(30),
NAME varchar(40),
PRICE bigint
);
INSERT INTO ITEMS(ITEM_ID,CATEGORY,NAME,PRICE)VALUES
(1,'Furniture','Bookcases',250),
(2,'FURNITURE','CHAIRS',200),
(3,'FURNITURE','TABLES',230),
(4,'TECHNOLOGY','PHONES',500),
(5,'TECHNOLOGY','ACCESSORIES',450),
(6,'OFFICE SUPPLIES','PAPER',89),
(7,'OFFICE SUPPLIES','LABELS',78),
(8,'OFFICE SUPPLIES','STORAGE',340);

select * FROM ITEMS;
 
create table CATEGORIES(
CATEGORY_ID INT NOT NULL primary key auto_increment,
TITLE VARCHAR(20),
STATUS varchar(20)
);
DROP table CATEGORIES;
create table CATEGORIES(
CATEGORY_ID varchar(20) NOT NULL primary key ,
TITLE varchar(30),
STATUS varchar(20)
);
insert into CATEGORIES (CATEGORY_ID,TITLE,STATUS) values
('FUR-BO-10001798','Furniture','DELIVERED'),
('FUR-CH-10000454','FURNITURE','CANCELLED'),
('TEC-PH-10002033','TECHNOLOGY','DELIVERED'),
('TEC-PH-10002275','TECHNOLOGY','REFUNDED'),
('OFF-AR-10002833','OFFICE SUPPLIES','RETURNED'),
('OFF-PA-10002365','OFFICE SUPPLIES','DELIVERED');

select * from CATEGORIES;

create table CUSTOMERS(
USER_ID varchar(10) not null primary key,
NAME varchar(30),
PHONE bigint,
ADDRESS varchar(40)
);

insert into CUSTOMERS(USER_ID,NAME,PHONE,ADDRESS) values
('CG-12520','GEETHA GOWLI',5578347834,'Henderson Kentucky US 4567'),
('AA-1289','PADMA KUMAR',7896453890,'Los Angeles California US 3478'),
('HU-3890','HENRY HUE',5590874572,'Seattle Washington US 7865'),
('NB-7856','NUEON WILSON',4567894323,'Houston Texas US 8763'),
('DF-2349','BIA BINI',5578239037,'Troy	New York US 7832');

select * from CUSTOMERS;


create table ORDERS(
ORDER_ID varchar(10) not null primary key,
USER_ID varchar(15) not null,
ITEMS varchar(30),
TOTAL float,
ORDER_DATE date
);
insert into ORDERS(ORDER_ID,USER_ID,ITEMS,TOTAL,ORDER_DATE)values
('CA-152156','CG-12520','Bookcases',250,'2020-05-09'),
('US-108966','YU-4875','TABLES',300,'2021-12-01'),
('US-118983','HU-3890','PAPER',100,'2020-08-15'),
('US-156909','DF-2349','PHONES',500,'2020-10-27');
select * from ORDERS;
show databases;
use school;
show tables;
select * from students;

-- false condition;
select * from students where not age = 23;
select * from students where age <> 23;
select * from students where class <> 'saap';
select * from students where not class = 'data analytics';

-- and operator;

select * from students where (class = 'saap' and age =30);
select * from students where class ='saap' && age = 30;
select * from students where 
(class = 'data analytics' and age =30);
select * from students where 
(student_id =2 && class ='data analytics');
select * from students where not
(student_id = 2 && class ='data analytics');

-- or operator;

select * from students where (class ='saap' or class ='data analytics'); 
select *from students where (class ='saap' || class ='data analytics');
select * from students where (class ='statisticalanalytics' or age =30);
select * from students where (first_name = 'praveen' || last_name = 'p s');
select * from students where not (first_name ='praveen' || last_name = 'p s');

-- in operator

select * from students where class in ('data analytics','saap');
select * from students where not class in ('data analytics','saap');
select * from students where age in (23,30);

-- exists condition

use company;
select * from projects;
select * from employees;
select * from clients;
drop table projects;
create table projects(
project_id int not null primary key auto_increment,
title varchar(50),
CLIENT_ID int,
EMP_ID int,
start_date datetime,
end_date datetime
);
insert into projects(project_id,title,CLIENT_ID,EMP_ID,start_date,end_date)values
(1,'manage our company servers',1,2,'2020-10-30','2021-02-12'),
(2,'mysql database from my desktop application',3,4,'2020-09-20','2021-01-10'),
(3,'develop ecommerse website from scratch',2,1,'2021-01-10','2021-10-01'),
(4,'wordpress website for our company',4,3,'2021-03-23','2021-08-12');
select * from projects;
select * from employees;
select * from clients;
select * from employees where exists 
(select * from projects where projects.emp_id = employees.emp_id);
select * from clients where exists
(select * from projects where projects.client_id = clients.client_id);

-- not exists
select * from clients where not exists
(select * from projects where projects.client_id = clients.client_id);
select * from employees where not exists
(select * from projects where projects.emp_id = employees.emp_id);

-- not in
select * from employees where salary not in (3500,5000,2500);
select * from employees where jobtitle not in ('senior executive');

-- comparison operators

select * from employees where salary > 5000;
select * from employees where salary <5000;
select * from employees where salary <>5000;
select * from employees where salary <=5000;
select * from employees where salary >=5000;

-- like operator

select * from employees;
select * from employees where name like 'sa%';
select * from employees where name like '%d';
select * from employees where name like '%ar%';
select * from employees where name not like 'sa%';
select * from employees where name not like '%d';
select * from employees where name not like '%ar%';

-- between operators
select * from employees where salary between 3500 and 5000;

-- numeric operators

select 20+50;
select 50*5;

use school;
select * from students;
select first_name, age + 10 from students;

use company;
select * from employees;
select name ,salary + 2000 from employees;
select 250000 + 450000;

-- concatenation operator

use school;
select * from students;
select concat(first_name,' ',last_name)as full_name from students;

-- temporal operator
select current_date + interval 7 day as week;
select current_date() + interval 1 day as tomorrow;
select current_date() - interval 1 day as yesterday;












