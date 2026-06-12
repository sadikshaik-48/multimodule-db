CREATE TABLE org.products
(
    product_id INT,
    product_name VARCHAR(30),
    category VARCHAR(20),
    price INT
);

INSERT INTO org.products
VALUES
(1,'Laptop','Electronics',70000),
(2,'Mobile','Electronics',40000),
(3,'Chair','Furniture',5000),
(4,'Table','Furniture',12000),
(5,'Headphones','Electronics',3000),
(6,'Sofa','Furniture',25000);

CREATE TABLE org.featured_products
(
    product_id INT
);

INSERT INTO org.featured_products
VALUES
(1),
(2),
(6);

select * from org.products
select * from org.featured_products

----------------------------------------------------------------------------------------------------------------------------------------------------------

select * from org.products
where price > 10000;

select * from org.products
order by price desc;

select distinct category from org.products;

select sum(price) as total_price from org.products;

select avg(price) as avg_of_price from org.products;

select max(price) as highest_price_product from org.products;

select min(price) as lowest_price_product from org.products;

select category, count(*) as no_of_products from org.products
group by category;

select category, avg(price) as average_price from org.products
group by category;

select category, avg(price) from org.products
group by category
having avg(price) > 20000;

select *, case
when price >= 50000 then 'premium'
when price >= 10000 then 'standard'
else 'budget'
end product_class
from org.products;

select 
case category
when 'electronics' then 'tech' 
else 'home'
end as category_type,
count(*) from org.products
group by
case category
when 'electronics' then 'tech' 
else 'home'
end;

select product_name, price from org.products
where price > (select avg(price) from org.products);

select product_id, product_name from org.products
where product_id in (select product_id from org.featured_products);

select product_id, product_name from org.products
where product_id not in ( select product_id from org.featured_products);

select product_name, product_id from org.products t1
where exists(
select 1 from org.featured_products t2
where t2.product_id = t1.product_id);

select avg(price) from org.products
where product_id in (
select product_id from org.featured_products);

select product_name, price from org.products
where price > (select avg(price) from org.products where product_id not in (select product_id from org.featured_products))
and
price < (select avg(price) from org.products where product_id in (select product_id from org.featured_products));

select product_name from org.products 
where price > (select avg(price) from org.products) and product_id in (select product_id from org.featured_products);

create view highest_price as
(select * from org.products where price >= 25000)

select * from highest_price;