use mydb;

select count(*) from Sales;

select City, 
sum(total) as Total_Sale 
from Sales
group by City
order by Total_Sale desc;

select category, 
sum(total) as Total_Sale 
from Sales where cust_id = 56449
group by category
order by Total_Sale desc;

/*Top City by Sales*/
select city,
sum(amount) as Total_Sale
from Orders
group by city
order by Total_Sale desc;

/*Top Selling Products*/
select ProductName,
sum(amount) as Total_Revenue
from Orders
group by ProductName
order by Total_Revenue desc;

/*Top Customers*/
select customerName,
sum(amount) as Total_Spent
from Orders
group by customerName
order by Total_Spent desc;

/*Monthly Revenue*/
select month(OrderDate) as Month,
sum(amount) as Total_Revenue
from Orders
group by Month
order by Total_Revenue desc;

