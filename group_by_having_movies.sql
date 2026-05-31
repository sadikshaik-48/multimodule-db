select language, count(movie_name) as movie_count from entertainment.movies
group by language 
having count(movie_name) > 100;

select genre, avg(rating) as average_rating from entertainment.movies
group by genre
having avg(rating) > 4;

select language, sum(collection_cr) as total_collection from entertainment.movies
group by language
having sum(collection_cr) > 1000;

select genre, max(rating) as highest_rating from entertainment.movies 
group by genre 
having max(rating) > 4.5;

select language, count(*) as movie_count from entertainment.movies
where rating > 4.5
group by language
having count(*) > 30;