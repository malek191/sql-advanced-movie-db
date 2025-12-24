-- Insert Movies
INSERT INTO Movies VALUES 
(1, 'The Matrix', 1999, 'Sci-Fi', 8.7),
(2, 'Inception', 2010, 'Sci-Fi', 8.8),
(3, 'Titanic', 1997, 'Romance', 7.8);

-- Insert Actors
INSERT INTO Actors VALUES 
(1, 'Keanu Reeves', 1964),
(2, 'Leonardo DiCaprio', 1974),
(3, 'Kate Winslet', 1975),
(4, 'Carrie-Anne Moss', 1967);

-- Insert MovieActors
INSERT INTO MovieActors VALUES
(1, 1, 'Neo'),
(1, 4, 'Trinity'),
(2, 2, 'Dom Cobb'),
(3, 2, 'Jack Dawson'),
(3, 3, 'Rose DeWitt Bukater');

-- Insert Reviews
INSERT INTO Reviews VALUES
(1, 1, 'Alice', 9.0, '2025-12-01'),
(2, 2, 'Bob', 8.5, '2025-12-02'),
(3, 3, 'Charlie', 8.0, '2025-12-03');

-- Insert BoxOffice
INSERT INTO BoxOffice VALUES
(1, 170000000, 292000000),
(2, 200000000, 530000000),
(3, 220000000, 1300000000);