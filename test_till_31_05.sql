select -- basics
movie_name, language, rating from entertainment.movies
where rating > 4.5
order by rating desc;

select -- basics
movie_name, genre from entertainment.movies
where language = 'tamil' or genre = 'action';

select -- AF
count(*) as total_movies from entertainment.movies;

select -- AF
max(collection_cr) as highest_collection from entertainment.movies;

select -- AF
avg(rating) as average_rating from entertainment.movies;

select -- group by
language, count(movie_name) as movie_count from entertainment.movies
group by language;

select -- group by
genre, sum(collection_cr) as total_collection from entertainment.movies 
group by genre
order by total_collection desc;

select --group by --having
language, count(*) as movie_count from entertainment.movies
group by language
having count(*) > 2;

select --group by --having
genre, avg(rating) as average_rating from entertainment.movies 
group by genre 
having avg(rating) > 4;

select -- case
movie_name, rating,
case
when rating	>= 4.8 then 'masterpeice'
when rating >= 4.5 then 'excellent'
when rating >= 4.0 then 'good'
else 'average'
end as 'review'
from entertainment.movies
order by rating desc;


-- select * from lucifer.customers

-- select * from lucifer.orders

select -- inner join
customer_name,amount from lucifer.customers t1 inner join lucifer.orders t2 on t1.customer_id = t2.customer_id;

select -- left join 
customer_name, city, amount from lucifer.customers t1 left join lucifer.orders t2 on t1.customer_id = t2.customer_id;

select -- join
customer_name, amount from lucifer.customers t1 join lucifer.orders t2 on t1.customer_id = t2.customer_id
where amount > 5000
order by amount desc;

--select * from lucifer.projects;
select -- self join
t1.project_name as project_name,
t2.project_name as parent_project_name
from lucifer.projects t1 join lucifer.projects t2 on t2.project_id = t1.parent_project_id;

select -- self join
t1.project_name as projet_name,
t2.project_name as parent_project_name
from lucifer.projects t1 join lucifer.projects t2 on t2.project_id = t1.parent_project_id
where t2.project_name = 'backend';