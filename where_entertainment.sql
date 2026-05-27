SELECT * FROM entertainment.movies;

SELECT movie_name FROM entertainment.movies
WHERE genre = 'scifi';

SELECT movie_name, collection_cr FROM entertainment.movies
WHERE collection_cr > 1500;

SELECT movie_name, rating FROM entertainment.movies
WHERE rating > 4.8
ORDER BY rating DESC;

SELECT * FROM entertainment.movies 
WHERE movie_name LIKE '%SA%'
ORDER BY rating DESC;
