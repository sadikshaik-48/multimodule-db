select movie_name, rating from entertainment.movies
where rating >
(
select avg(rating) from entertainment.movies
);

select movie_name, collection_cr from entertainment.movies
where collection_cr > 
(
select avg(collection_cr) from entertainment.movies
);

select movie_name, rating from entertainment.movies
where rating = 
(
select max(rating) from entertainment.movies
);

select movie_name, collection_cr from entertainment.movies where
collection_cr = (select min(collection_cr) from entertainment.movies);

----------------------------------------------------------------------------------------

select movie_name, rating from entertainment.movies 
where rating < (select avg(rating) from entertainment.movies);

----------------------------------------------------------------------------------------


select * from lucifer.customers;
select * from lucifer.orders;

select customer_name from lucifer.customers 
where customer_id in 
(select customer_id from lucifer.orders);

select customer_name from lucifer.customers
where customer_id not in 
(select customer_id from lucifer.orders);

select movie_name, rating from entertainment.movies
where rating =
( 
select max(rating) from entertainment.movies
) 
or rating =
(select min(rating) from entertainment.movies);

select movie_name, rating from entertainment.movies 
where rating in (
(select min(rating) from entertainment.movies), (select max(rating) from entertainment.movies));

-------------------------------------------------------------------------------------------------------

select movie_name, language  from entertainment.movies
where language in('telugu', 'tamil');

select movie_name, genre from entertainment.movies
where genre in('action', 'thriller', 'drama');

select movie_name, language from entertainment.movies
where language not in ('tamil', 'telugu');

select movie_name, genre from entertainment.movies
where genre not in ('action', 'drama');

select customer_name from lucifer.customers
where customer_id in
(select customer_id from lucifer.orders);

select customer_name from lucifer.customers
where customer_id not in
(select customer_id from lucifer.orders);

select customer_name, amount from lucifer.customers t1 join lucifer.orders t2 on t1.customer_id = t2.customer_id; 

select movie_name, language
from entertainment.movies 
where language in ('hindi', 'tamil');

select movie_name, language
from entertainment.movies 
where language not in ('tamil', 'hindi');

select customer_name from lucifer.customers
where customer_id in (select customer_id from lucifer.orders);

select customer_name from lucifer.customers
where customer_id not  in (select customer_id from lucifer.orders);

