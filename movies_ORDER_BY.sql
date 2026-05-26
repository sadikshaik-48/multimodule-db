CREATE TABLE movies (
    movie_id INT PRIMARY KEY IDENTITY(1,1),
    movie_name VARCHAR(100),
    genre VARCHAR(50),
    rating DECIMAL(2,1),
    collection_cr INT,
    language VARCHAR(50)
);

INSERT INTO movies (movie_name, genre, rating, collection_cr, language) VALUES
('Inception', 'Sci-Fi', 8.8, 830, 'English'),
('Interstellar', 'Sci-Fi', 8.7, 700, 'English'),
('Jailer', 'Action', 7.2, 650, 'Tamil'),
('Leo', 'Action', 7.5, 620, 'Tamil'),
('KGF Chapter 2', 'Action', 8.4, 1200, 'Kannada'),
('3 Idiots', 'Comedy', 8.4, 400, 'Hindi'),
('Avengers Endgame', 'Superhero', 8.4, 2790, 'English'),
('Bahubali 2', 'Epic', 8.2, 1810, 'Telugu'),
('Titanic', 'Romance', 7.9, 2200, 'English'),
('The Dark Knight', 'Action', 9.0, 1000, 'English'),
('Vikram', 'Action', 8.3, 500, 'Tamil'),
('RRR', 'Action', 8.0, 1200, 'Telugu'),
('Frozen', 'Animation', 7.4, 1450, 'English'),
('Toy Story', 'Animation', 8.3, 390, 'English'),
('Dangal', 'Drama', 8.3, 2000, 'Hindi');

SELECT * FROM movies
WHERE genre = 'Action'
ORDER BY rating DESC;

SELECT TOP 5 *
FROM movies
WHERE language = 'Tamil'
ORDER BY movie_id ASC;

SELECT TOP 3 * 
FROM movies 
WHERE rating > 8
ORDER BY rating DESC;