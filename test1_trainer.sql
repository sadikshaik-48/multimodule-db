select * from entertainment.movies;
select distinct language from entertainment.movies;
select min(rating) as min_rating from entertainment.movies;
select sum(collection_cr) as total_budget from entertainment.movies;
select * from entertainment.movies where collection_cr > 100;
select count(*) as total_movies from entertainment.movies;
select top 10 * from entertainment.movies;
select * from entertainment.movies where genre is null;
select * from entertainment.movies where movie_name like '%1';
update entertainment.movies set movie_name = 'manzzzooo' where movie_id = 1;
select * from entertainment.movies where movie_name like '%zzz%';
	
