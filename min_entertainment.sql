SELECT * FROM entertainment.movies;

select min(rating) 
from entertainment.movies;

select min(collection_cr)
from entertainment.movies;

select min(rating) 
from entertainment.movies
where genre = 'scifi';

select min(collection_cr)
from entertainment.movies
where language = 'telugu';

select min(rating)
from entertainment.movies
where genre = 'thriller' and language = 'tamil';