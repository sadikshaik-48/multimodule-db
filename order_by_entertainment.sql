SELECT * FROM entertainment.movies;

SELECT movie_name, collection_cr FROM entertainment.movies
WHERE collection_cr > 1000
ORDER BY collection_cr DESC;

SELECT movie_name FROM entertainment.movies
ORDER BY movie_name;

SELECT movie_name, language FROM entertainment.movies
WHERE language = 'English'
ORDER BY movie_id; 