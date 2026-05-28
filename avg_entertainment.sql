SELECT * FROM entertainment.movies;

select 
avg(rating) as avg_movie_rating from entertainment.movies;

select
avg(collection_cr) as average_collection_cr from entertainment.movies;

select 
avg(rating) as telugu_avg_rating from entertainment.movies
where language = 'telugu';

select 
avg(collection_cr * 2) as double_avg_collection_cr from entertainment.movies;

select
avg(collection_cr) as avg_action_collection from entertainment.movies
where genre = 'action' and rating > 4.0;
