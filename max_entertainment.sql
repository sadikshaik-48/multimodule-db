SELECT * FROM entertainment.movies;

select max(rating)
from entertainment.movies;

select max(collection_cr)
from entertainment.movies;


select max(rating)
from entertainment.movies
where genre = 'action';

select max(collection_cr)
from entertainment.movies
where language = 'english';

select max(rating)
from entertainment.movies
where genre = 'thriller' and language = 'tamil';