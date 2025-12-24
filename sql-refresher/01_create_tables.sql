-- Advanced Movie Database Tables

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    release_year INT,
    genre VARCHAR(50),
    rating DECIMAL(3,1)
);

CREATE TABLE Actors (
    actor_id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_year INT
);

CREATE TABLE MovieActors (
    movie_id INT,
    actor_id INT,
    role VARCHAR(100),
    PRIMARY KEY(movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    movie_id INT,
    reviewer VARCHAR(100),
    rating DECIMAL(3,1),
    review_date DATE,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

CREATE TABLE BoxOffice (
    movie_id INT PRIMARY KEY,
    domestic DECIMAL(15,2),
    international DECIMAL(15,2),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);