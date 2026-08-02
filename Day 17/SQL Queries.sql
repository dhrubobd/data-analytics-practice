CREATE database MYDB;

USE MYDB;

CREATE TABLE STUDENTS(
	StudentID int primary key,
    StudentName varchar(50),
    Department varchar(50),
    Age int,
    City varchar(30)
);

alter table STUDENTS ADD Email varchar(50) first;

alter table students modify column Email varchar(60) after StudentName;

insert into students (StudentID, StudentName, Email, Department, Age, City) values
(202601001, 'Rahim','rahim@gmail.com','CS',23,'Dhaka'),
(202602001, 'Karim','karim@gmail.com','BBA',25,'Khulna'),
(202601002, 'Ram','ram@gmail.com','CS',24,'Kumilla'),
(202603001, 'Shyam','sam@gmail.com','LLB',24,'Dhaka'),
(202602002, 'Jodu','joe@gmail.com','BBA',23,'Faridpur'),
(202601003, 'Madhu','modhu@gmail.com','CS',23,'Dhaka'),
(202603002, 'Rozina','roz@gmail.com','LLB',25,'Rajshahi');

select * from Students limit 0,5;

select * from Students where City = 'Dhaka' limit 0,5;

select * from Students where Department = 'BBA' limit 0,5; 

select * from Students where Department in ('BBA','CS') limit 0,5; 

select * from Students where Age < 25 limit 0,5; 

select * from Students where Department in ('BBA','CS') and Age > 23 limit 0,5;

select * from Students where Department in ('BBA','CS') and City = 'Dhaka' limit 0,5; 

select * from Students where Department in ('BBA','CS') or City = 'Dhaka';