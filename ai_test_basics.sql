-- Level - 1

select movie_name, rating from entertainment.movies
where language = 'telugu' and rating > 4.5
order by rating desc;

select 
sum(collection_cr) as action_collection from entertainment.movies
where genre = 'action';

select distinct language from entertainment.movies;

select
max(collection_cr) as highest_english_collection from entertainment.movies
where language = 'english';

delete from entertainment.movies
where rating < 2.5;

update entertainment.movies
set rating = 4.8
where language = 'tamil';

select top 3 * from entertainment.movies
order by rating desc;

select
count(*) as thriller_count from entertainment.movies
where genre = 'thriller';

select
avg(collection_cr) as avg_telugu_collection from entertainment.movies
where language = 'telugu';

select movie_name, language, collection_cr from entertainment.movies
where language = 'hindi' or language = 'english'
order by collection_cr desc;


-- Level - 2

select 
min(collection_cr) as min_telugu_action_collection from entertainment.movies
where language = 'telugu';

select top 5 movie_name, collection_cr from entertainment.movies
order by collection_cr desc;

update entertainment.movies
set rating = 5.0
where genre = 'scifi' and language = 'english';

select
count(*) as high_rated_movies from entertainment.movies
where rating >= 4.5

select distinct genre from entertainment.movies
order by genre asc;

-- Level - 3

select 
max(rating) as highest_hindi_rating from entertainment.movies
where language = 'hindi';

select top 2 movie_name, collection_cr from entertainment.movies
order by collection_cr asc;

select 
count(*) as top_action_movies from entertainment.movies
where rating > 4.5 and genre = 'action';

update entertainment.movies
set collection_cr = 1000
where genre = 'thriller' and language = 'telugu';

select distinct language from entertainment.movies
order by language desc;

select
min language from entertainment.movies;