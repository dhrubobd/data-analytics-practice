USE MYDB;

create table Sales_Performance(
Emp_ID int primary key,
Emp_Name varchar(100),
City varchar(50),
Revenue decimal (10,2)
);

insert into Sales_Performance
values
(101,'Sakib','Dhaka',200000),
(102,'Sabuj','Khulna',205000),
(103,'Santo','Sylhet',360000),
(104,'Rakib','Dhaka',250000),
(105,'Sajjad','Rajshahi',100000),
(106,'Aakib','Sylhet',250000),
(107,'Sakal','Dhaka',300000),
(108,'Sajib','Khulna',270000);

select Emp_Name, Revenue,
row_number()
over(order by Revenue desc) as Employee_Rank
from Sales_Performance;

select Emp_Name, Revenue,
rank()
over(order by Revenue desc) as Employee_Rank
from Sales_Performance;

/*Top 3 Employee by Ranking*/
select * from
(select Emp_Name, Revenue,
rank()
over(order by Revenue desc) as Employee_Rank
from Sales_Performance)
as T
where Employee_Rank <=3;


/*City wise Ranking*/
select City,Emp_Name,Revenue,
rank()
over(partition by City order by Revenue desc) as Employee_Rank
from Sales_Performance;

create table CourseRevenue(
	CourseID int primary key,
    CourseName varchar(50),
    Revenue decimal(10,2)
);

insert into CourseRevenue
values
(101,'AI Content Creation',300000),
(102,'Machine Learning',430000),
(103,'Data Analysis',230000),
(104,'Python Programming',220000),
(105,'Web Development',430000),
(106,'Graphics Design',460000),
(107,'Video Editing',250000);

select * from
(select CourseName,Revenue,
rank()
over(order by Revenue desc) as Course_Rank
from CourseRevenue)
as T
where Course_Rank<=3;