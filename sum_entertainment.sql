SELECT * FROM entertainment.movies;

select 
sum (collection_cr) as total_collection
from entertainment.movies;

select 
sum (collection_cr) as total_telugu_collection_cr from entertainment.movies
where language = 'telugu';

select
sum(rating) as rating_of_action_movies from entertainment.movies
where genre = 'action'

select 
sum(collection_cr * 2) as double_collection from entertainment.movies

select
sum(collection_cr) as high_rate_collection from entertainment.movies
where rating > 4.5;

