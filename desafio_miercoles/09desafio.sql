SELECT year, casting.name, movies.name AS "movie" FROM movies
INNER JOIN casting ON movies.id=casting.movie_id
WHERE year = 2001;