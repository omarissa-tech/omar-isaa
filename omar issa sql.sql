create database SQL_Practice;
use SQL_Practice ;
create table Orders (order_id int primary key,
customer_id varchar(20)not null ,
product_name varchar(30) not null,
category varchar (30),
country varchar (30),
order_date date not null,
ship_date date,
quantity int not null,
unit_price decimal(10,2)not null,
sales decimal(10,2),
discount decimal(10,2),
profit decimal(10,2));
insert into orders (order_id,customer_id,product_name,category,country,order_date,ship_date,quantity,
unit_price,sales,discount,profit)
values 
(1,'c101','office chair','furniture','usa','2023-01-15','2023-01-18',2,250.00,500.00,0.10,80.00),
(2,'c102','gaming chair','furniture','usa','2023-03-10','2023-03-12',1,700.00,700.00,0.20,120.00),
(3,'a103','laptop','technology','germany','2023-05-05','2023-05-08',3,400.00,1200.00,0.15,250.00),
(4,'b104','desk lamp','office supplies','uk','2022-11-20','2022-11-25',5,40.00,200.00,0.05,30.00),
(5,'c105','tablet','technology','usa','2023-07-01',null,1,350.00,350.00,null,-20.00),
(6,'d106','bookshelf','furniture','canada','2024-01-12','2024-01-15',4,150.00,600.00,0.25,90.00),
(7,'c107','monitor','technology','usa','2023-09-09','2023-09-14',2,275.00,550.00,0.00,60.00),
(8,'e108','printer','technology','france','2023-04-18',null,1,180.00,180.00,0.10,-15.00),
(9,'c109','wooden chair','furniture','uk','2023-12-05','2023-12-09',6,120.00,720.00,0.30,140.00),
(10,'f110','mouse','technology','germany','2023-06-22','2023-06-24',10,25.00,250.00,0.05,40.00),
(11,'c111','conference chair','furniture','usa','2022-08-14','2022-08-19',3,320.00,960.00,0.10,-50.00),
(12,'g112','phone','technology','india','2023-02-11','2023-02-15',2,500.00,1000.00,0.20,200.00),
(13,'h113','binder','office supplies','usa','2023-10-01','2023-10-03',1,15.00,15.00,0.00,5.00),
(14,'c114','standingdesk','furniture','germany','2023-11-19','2023-11-22',2,650.00,1300.00,0.10,300.00),
(15,'i115','headphones','technology','usa','2024-02-05','2024-02-07',4,80.00,320.00,0.05,45.00), 
(16,'c116','study chair','furniture','usa','2023-08-08',null,5,210.00,1050.00,0.40,180.00),
(17,'j117','router','technology','uk','2023-03-30','2023-04-02',2,150.00,300.00,null,-10.00), 
(18,'c118','filingcabinet','furniture','canada','2023-05-21','2023-05-25',1,450.00,450.00,0.20,70.00),
(19,'k119','desk chair pro','furniture','usa','2023-06-01','2023-06-05',2,480.00,960.00,0.10,150.00),
(20,'c120','serverrack','technology','germany','2023-07-17','2023-07-20',1,1100.00,1100.00,0.05,220.00);
select * from orders;
select order_id,customer_id,sales from orders;
select * from orders
where sales>500;
select * from orders
where quantity=1;
select * from orders
where country='usa';
select distinct country 
from orders;
select * from orders
where profit<0;
select * from orders
where discount >=0.2;
select * from orders
where ship_date is null;
select * from orders
where sales = quantity * unit_price;
select * from orders
where country='usa' and sales >300;
select * from orders
where category='furniture'or category ='technology';
select * from orders
where customer_id like'c%';
select * from orders
where order_date between'2023-01-01'and '2023-12-31';
select * from orders
where country in ('usa','uk','germany')
order by sales desc ;
select * from orders
where sales>500 and profit>0
order by sales desc;
select * from orders
where discount is not null and discount>0
order by discount asc ;
select * from orders
where (quantity*unit_price)-discount>1000;
select * from orders
where product_name like '%chair%' 
and sales between 200 and 1000;
select distinct customer_id
from orders
where country = 'usa' and profit<0
order by customer_id asc ;
















 