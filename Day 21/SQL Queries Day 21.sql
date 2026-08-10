use mydb;
select count(*) from Orders;

/*Performance Check*/
explain
select * from Orders where city='Dhaka';

/*Creating Index*/
create index idx_city
on orders(City(100));

/*Removing Index*/
drop index idx_city
on orders;

/*Creating Composit Index*/
create index idx_city_prod
on orders(City(100),ProductName(100));

/*Performance Check*/
explain
select CustomerName,OrderDate from Orders where city='Dhaka' and ProductName='Keyboard';