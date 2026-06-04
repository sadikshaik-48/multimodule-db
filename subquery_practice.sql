CREATE TABLE org.customers
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(30),
    city VARCHAR(20),
    spending INT
);

INSERT INTO org.customers
VALUES
(1,'Arun','Chennai',5000),
(2,'Bala','Mumbai',8000),
(3,'Charan','Delhi',3000),
(4,'Deepak','Chennai',10000),
(5,'Eshan','Hyderabad',7000);

CREATE TABLE org.memberships
(
    customer_id INT
);

INSERT INTO org.memberships
VALUES
(2),
(4),
(5);

select * from org.customers;
select * from org.memberships;
-------------------------------------------------------------------------------------------------------------

select customer_name, spending from org.customers
where spending > (select avg(spending) from org.customers);

select customer_name from org.customers
where spending = (select max(spending) from org.customers);

select customer_name from org.customers 
where spending < (select spending from org.customers where customer_name = 'eshan');

select customer_name, spending from org.customers 
where spending = (select max(spending) from org.customers) or spending = (select min(spending) from org.customers);

select customer_name from org.customers
where customer_id in (select customer_id from org.memberships);

select customer_name from org.customers
where customer_id not in (select customer_id from org.memberships);

select customer_name, spending from org.customers
where customer_id in (select customer_id from org.memberships) and spending > 7500;

select customer_name from org.customers
where customer_id not in (select customer_id from org.memberships) and spending > 4000;

select customer_name from org.customers t1
where exists (select * from org.memberships t2 where t2.customer_id = t1.customer_id);

select customer_name from org.customers t1
where not exists (select * from org.memberships t2 where t2.customer_id = t1.customer_id);

select customer_name from org.customers t1
where exists (select * from org.memberships t2 where t2.customer_id = t1.customer_id) and spending > 7500;

select customer_name from org.customers t1
where not exists (select * from org.memberships t2 where t2.customer_id = t1.customer_id) and spending < 4000;

select avg(spending) from (select spending from org.customers where customer_id in (select customer_id from org.memberships))t;

select count(*) from (select customer_name from org.customers where spending > 6000)t;

select max(spending) from (select spending from org.customers where customer_id in (select customer_id from org.memberships))t;

select count(*) from (select spending from org.customers where spending > (select avg(spending) from org.customers))t;

select avg(spending) from (select spending from org.customers where customer_id not in (select customer_id from org.memberships))t;

select customer_name, spending from org.customers
where spending > ( select avg(spending) from org.customers);

(select spending from org.customers where customer_id in (select customer_id from org.memberships) 

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE org.buyers
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(30),
    city VARCHAR(20),
    spending INT
);

INSERT INTO org.buyers
VALUES
(1,'Arun','Chennai',5000),
(2,'Bala','Mumbai',8000),
(3,'Charan','Delhi',3000),
(4,'Deepak','Chennai',10000),
(5,'Eshan','Hyderabad',7000);

CREATE TABLE org.premium
(
    customer_id INT
);

INSERT INTO org.premium
VALUES
(2),
(4),
(5);

select * from org.buyers
select * from org.premium

select customer_name, spending from org.buyers
where spending > (select spending from org.buyers where customer_name = 'arun');

select customer_name from org.buyers
where spending between (select spending from org.buyers where customer_name = 'arun') and (select spending from org.buyers where customer_name = 'deepak');

select customer_name, spending from org.buyers
where customer_id in (select customer_id from org.premium) and spending > (select avg(spending) from org.buyers);

select customer_name from (select customer_name from org.buyers where customer_id not in (select customer_id from org.premium) and spending > (select avg(spending) from org.buyers))t;

select avg(spending) from (select spending from org.buyers where spending > (select avg(spending) from org.buyers))t;

select count(*) from (select customer_id from org.buyers where customer_id in (select customer_id from org.premium) and spending > 7500)t

select customer_name, spending from org.buyers t1
where exists (
select 1
from org.buyers t2
where t2.customer_id = t1.customer_id and spending > (select spending from org.buyers where customer_name = 'eshan'));

select customer_name from org.buyers t1
where not exists (select * from org.premium t2 where t2.customer_id = t1.customer_id) and spending > (select spending from org.buyers where customer_name = 'charan')

select customer_name from org.buyers
where spending = (select max(spending) from org.buyers) or spending = (select max(spending) as second_max_spending from org.buyers where spending < (select max(spending) from org.buyers));

select customer_name, spending from org.buyers
where spending > (select avg(spending) from org.buyers t1 where customer_id not in (select * from org.premium t2 where t2.customer_id = t1.customer_id)) and spending < (select avg(spending) from org.buyers t1 where customer_id in (select * from org.premium t2 where t2.customer_id = t1.customer_id));

