-- Trigger: Update movie average rating after new review
CREATE TRIGGER update_avg_rating
AFTER INSERT ON Reviews
FOR EACH ROW
BEGIN
    UPDATE Movies
    SET rating = (
        SELECT AVG(rating) FROM Reviews WHERE movie_id = NEW.movie_id
    )
    WHERE movie_id = NEW.movie_id;
END;

-- View: Top Rated Movies
CREATE VIEW TopRatedMovies AS
SELECT title, rating
FROM Movies
WHERE rating >= 8.5;

-- Stored Procedure: Add New Actor
DELIMITER //
CREATE PROCEDURE AddActor(IN actor_name VARCHAR(100), IN birth INT)
BEGIN
    INSERT INTO Actors(name, birth_year) VALUES (actor_name, birth);
END;
//
DELIMITER ;

-- Transaction Example: Add Movie + BoxOffice + MovieActors
START TRANSACTION;
INSERT INTO Movies VALUES (4, 'Avatar', 2009, 'Sci-Fi', 7.9);
INSERT INTO BoxOffice VALUES (4, 760000000, 2200000000);
INSERT INTO MovieActors VALUES (4, 5, 'Jake Sully');
COMMIT;