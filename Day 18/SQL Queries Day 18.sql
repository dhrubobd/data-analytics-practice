USE MYDB;

CREATE TABLE SALES(
	Order_Id int primary key,
    Product_Name varchar(100),
    Quantity int,
    Price_Per_Unit decimal(10,2),
    Total_Revenue decimal(10,2),
    Region varchar(30)
);

insert into sales (Order_Id, Product_Name, Quantity, Price_Per_Unit, Total_Revenue, Region) values
(202601001, 'Chaal',5,60.66,303.30,'Dhaka'),
(202602001, 'Daal',2,150.40,300.80,'Khulna'),
(202601002, 'Chaal',3,61.00,183.00,'Kumilla'),
(202603001, 'Aata',4,55.00,220.00,'Dhaka'),
(202602002, 'Daal',3,148.99,446.97,'Faridpur'),
(202601003, 'Chaal',4,60.50,242.00,'Dhaka'),
(202603002, 'Aata',5,56.00,280.00,'Rajshahi');

select * from sales;

select Product_Name,
sum(Total_Revenue) as Product_Total_Revenue
from sales
group by Product_Name;

select Product_Name,
sum(Total_Revenue) as Product_Total_Revenue,
sum(Quantity) as Number_Of_Quantity_Sold,
count(*) as Total_Number_Of_Order
from sales
group by Product_Name;

select Region,
sum(Total_Revenue)
from sales
group by Region;