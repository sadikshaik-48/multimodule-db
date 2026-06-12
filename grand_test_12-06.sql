CREATE TABLE org.orders
(
    order_id INT,
    customer_name VARCHAR(30),
    city VARCHAR(20),
    amount INT
);

INSERT INTO org.orders
VALUES
(1,'Rahul','Hyderabad',5000),
(2,'Priya','Chennai',8000),
(3,'Kiran','Mumbai',3000),
(4,'Sneha','Hyderabad',10000),
(5,'Amit','Delhi',7000),
(6,'Riya','Chennai',6000);

CREATE TABLE org.premium_customers
(
    order_id INT
);

INSERT INTO org.premium_customers
VALUES
(2),
(4),
(5);

select * from org.orders;
select * from org.premium_customers;

--------------------------------------------------------------------------------------------------------------------------------------------

select customer_name from org.orders
where amount > 6000;

select * from org.orders
order by amount asc;

select distinct city from org.orders;

select sum(amount) as total_order_amount from org.orders;

select avg(amount) as average_order_amount from org.orders;

select city, count(*) from org.orders
group by city;

select city, sum(amount) from org.orders
group by city;

select city, avg(amount) from org.orders
group by city
having avg(amount) > 6000;

select 
case
when amount >= 9000 then 'gold'
when amount >= 6000 then 'silver'
else 'bronze'
end as order_type
from org.orders;

select 
case city
when 'hyderabad' then 'metro'
when 'chennai' then 'metro'
else 'non metro'
end as city_type, count(*) as total_orders from org.orders
group by 
case city
when 'hyderabad' then 'metro'
when 'chennai' then 'metro'
else 'non metro'
end;

select customer_name from org.orders
where amount > (select avg(amount) from org.orders);

select customer_name from org.orders
where order_id in (select order_id from org.premium_customers);

select customer_name from org.orders
where order_id not in (select order_id from org.premium_customers);

select customer_name from org.orders t1 
where exists (select 1 from org.premium_customers t2 where t2.order_id = t1.order_id);

select customer_name from org.orders t1
where not exists (select order_id from org.premium_customers t2 where t2.order_id = t1.order_id);

select avg(amount) as average_of_premium_customers from(select amount from org.orders where order_id in (select order_id from org.premium_customers))t;

select customer_name from org.orders
where 
amount > (select avg(amount) from org.orders where order_id not in (select order_id from org.premium_customers))
and
amount < (select avg(amount) from org.orders where order_id in (select order_id from org.premium_customers));

select customer_name from org.orders
where order_id in (select order_id from org.premium_customers) and amount > (select avg(amount) from org.orders);

create view premium_orders as
(select * from org.orders
where amount >= 7000);

select * from premium_orders;
