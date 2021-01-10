--Te asegura con el IF EXISTS que exista la base de datos
DROP DATABASE IF EXISTS filmstudios;

CREATE DATABASE filmstudios;

\c filmstudios;

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    year INT,
    director VARCHAR(100)
);

CREATE TABLE casting (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    movie_id INT,
    FOREIGN KEY (movie_id) REFERENCES movies (id)
);

copy movies(name, year, director) FROM '/home/juan/Escritorio/progresql/peliculas.csv' DELIMITER ',' CSV header;
copy casting(movie_id, name) FROM '/home/juan/Escritorio/progresql/reparto.csv' DELIMITER ',' CSV header;

