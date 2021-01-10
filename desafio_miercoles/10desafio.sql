SELECT casting.name, movies.name FROM casting
INNER JOIN movies ON movies.id = casting.movie_id
WHERE year IN (SELECT max(year) FROM movies);