SELECT * FROM entertainment.movies;

select count(*) 
from entertainment.movies;

select count(*)
from entertainment.movies
where genre = 'action';

select count(*)
from entertainment.movies
where language = 'english';

select count(*)
from entertainment.movies
where genre = 'scifi' and rating > 4.5;

select count(*) 
from entertainment.movies
where collection_cr > 1000;