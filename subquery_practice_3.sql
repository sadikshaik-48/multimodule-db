select * from org.customers
select * from org.memberships

select customer_name from org.customers
where spending > (
select avg(spending) from org.customers);

select customer_name from org.customers
where spending = (select max(spending) from org.customers);

select customer_name from org.customers
where spending < (
select spending from org.customers
where customer_name = 'eshan');

select customer_name from org.customers
where spending = (select max(spending) from org.customers) or spending = (select min(spending) from org.customers);

select customer_name from org.customers
where spending > (select spending from org.customers where customer_name = 'arun') and spending < (select spending from org.customers where customer_name = 'deepak');

---

select customer_name from org.customers
where customer_id in (
select customer_id from org.memberships);

select customer_name from org.customers
where customer_id not in (
select customer_id from org.memberships);

select customer_name from org.customers
where customer_id in (
select customer_id from org.memberships) and spending > 7500;

select customer_name from org.customers
where customer_id not in (
select customer_id from org.memberships) and spending < 6000;

select customer_name from org.customers t1
where exists (
select customer_id from org.memberships t2
where t2.customer_id = t1.customer_id);

select customer_name from org.customers t1
where not exists (
select customer_id from org.memberships t2
where t2.customer_id = t1.customer_id);

select customer_name from org.customers t1
where exists (
select customer_id from org.memberships t2
where t2.customer_id = t1.customer_id) and spending > 7000;

select customer_name from org.customers t1
where not exists (
select customer_id from org.memberships t2
where t2.customer_id = t1.customer_id) and spending < (select avg(spending) from org.customers);
---

select avg(spending) from(select spending from org.customers where customer_id in(select customer_id from org.memberships))t;

select max(spending) from (select spending from org.customers where spending > 5000)t;

select count(*) from (select customer_name from org.customers where spending > (select avg(spending) from org.customers))t;

select avg(spending) from (select spending from org.customers where customer_id not in(select customer_id from org.memberships))t;

select customer_name from org.customers
where spending > (select avg(spending) from(select spending from org.customers where customer_id not in(select customer_id from org.memberships))t)
and
spending < (select avg(spending) from(select spending from org.customers where customer_id in(select customer_id from org.memberships))t);

select customer_name from (select customer_name from org.customers where customer_id in (select customer_id from org.memberships) and spending > (select avg(spending) from org.customers))t;

select avg(spending) from (select spending from org.customers where spending > (select avg(spending) from org.customers))t;

