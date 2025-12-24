-- 1. List all movies with average review rating
SELECT m.title, m.release_year, m.genre, m.rating, AVG(r.rating) AS avg_review
FROM Movies m
LEFT JOIN Reviews r ON m.movie_id = r.movie_id
GROUP BY m.movie_id;

-- 2. List actors and their movies
SELECT a.name AS actor, m.title AS movie, ma.role
FROM Actors a
JOIN MovieActors ma ON a.actor_id = ma.actor_id
JOIN Movies m ON ma.movie_id = m.movie_id;

-- 3. Top-grossing movies (domestic + international)
SELECT m.title, b.domestic + b.international AS total_gross
FROM Movies m
JOIN BoxOffice b ON m.movie_id = b.movie_id
ORDER BY total_gross DESC;

-- 4. Count of movies per actor
SELECT a.name, COUNT(ma.movie_id) AS total_movies
FROM Actors a
JOIN MovieActors ma ON a.actor_id = ma.actor_id
GROUP BY a.name;

-- 5. Movies with rating above 8
SELECT * FROM Movies WHERE rating > 8;

-- 6. Movies without reviews
SELECT m.title FROM Movies m
LEFT JOIN Reviews r ON m.movie_id = r.movie_id
WHERE r.review_id IS NULL;