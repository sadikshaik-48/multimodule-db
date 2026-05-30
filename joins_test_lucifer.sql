CREATE TABLE lucifer.customers
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(20),
    city VARCHAR(20)
);

INSERT INTO lucifer.customers
VALUES
(1, 'Arjun', 'Mumbai'),
(2, 'Kabir', 'Delhi'),
(3, 'Vihaan', 'Bangalore'),
(4, 'Zayn', 'Chennai'),
(5, 'Dev', 'Hyderabad');
select * from lucifer.customers;

CREATE TABLE lucifer.orders
(
order_id INT PRIMARY KEY,
customer_id INT,
amount INT,

FOREIGN KEY (customer_id)
REFERENCES lucifer.customers(customer_id)
);

INSERT INTO lucifer.orders
VALUES
(101, 1, 5000),
(102, 1, 3000),
(103, 2, 7000),
(104, 3, 4500),
(105, 4, 9000);
select * from lucifer.orders;

select 
customer_name, amount
from lucifer.customers t1 inner join lucifer.orders t2 on t1.customer_id = t2.customer_id; 

select
customer_name, city, amount
from lucifer.customers t1 inner join lucifer.orders t2 on t1.customer_id = t2.customer_id
where city = 'mumbai';

select
customer_name, amount
from lucifer.customers t1 inner join lucifer.orders t2 on t1.customer_id = t2.customer_id
order by amount desc;

select
customer_name, amount
from lucifer.customers t1 inner join lucifer.orders t2 on t1.customer_id = t2.customer_id
where customer_name like 'a%';

select
customer_name, amount
from lucifer.customers t1 left join lucifer.orders t2 on t1.customer_id = t2.customer_id;


select
customer_name, city, amount
from lucifer.customers t1 left join lucifer.orders t2 on t1.customer_id = t2.customer_id
where city = 'delhi' or city = 'chennai';

------------------------------------------------------------------------------------------------------------

select 
customer_name, city, amount
from lucifer.customers t1 join lucifer.orders t2 on t1.customer_id = t2.customer_id
where amount > 4000
order by customer_name asc;

select 
customer_name, city, amount
from lucifer.customers t1 join lucifer.orders t2 on t1.customer_id = t2.customer_id
where city = 'mumbai' or amount > 8000;

select 
customer_name, amount
from lucifer.customers t1 left join lucifer.orders t2 on t1.customer_id = t2.customer_id
where customer_name not like 'v%';

select 
customer_name, city, amount
from lucifer.customers t1 left join lucifer.orders t2 on t1.customer_id = t2.customer_id
where city in ('mumbai', 'delhi')
order by amount desc;

select 
customer_name, amount
from lucifer.customers t1 join lucifer.orders t2 on t1.customer_id = t2.customer_id
where amount between 4000 and 8000
order by amount asc;

