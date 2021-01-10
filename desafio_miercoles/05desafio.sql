SELECT year, movies.name FROM movies
INNER JOIN casting ON movies.id=casting.movie_id
WHERE casting.name='Harrison Ford'
ORDER BY year;