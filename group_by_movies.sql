select * from entertainment.movies;

select rating, avg(collection_cr) as average_collection from entertainment.movies
group by rating;


select language,count(movie_name) as no_of_movies from entertainment.movies
group by language;

select genre, avg(rating) as avg_rating from entertainment.movies
group by genre;

select language, sum(collection_cr) as total_collection from entertainment.movies
group by language;

--------------------------------------------------------------------------------------------

select genre, count(movie_name) as no_of_movies from entertainment.movies
group by genre;

select language, max(rating) as max_rating from entertainment.movies
group by language;

select genre, min(collection_cr) as lowest_collection from entertainment.movies
group by genre;

select language, avg(collection_cr) as average_collection from entertainment.movies
group by language;

select genre, sum(collection_cr) as total_collection from entertainment.movies
group by genre
order by total_collection desc;

------------------------------------------------------------------------------------------------------

select language, count(movie_name) as no_of_movies from entertainment.movies
where rating > 4.5
group by language;

select genre, avg(rating) as average_rating from entertainment.movies
where language = 'english'
group by genre;
 
select language, sum(collection_cr) as total_collection from entertainment.movies
where collection_cr > 500
group by language
order by total_collection desc;

select genre, max(rating) as highest_rating from entertainment.movies
where language = 'tamil'
group by genre;

select language, count(movie_name) as movie_count from entertainment.movies
where genre = 'action'
group by language;