SELECT movies.name, year, director, casting.name FROM movies
INNER JOIN casting ON movies.id=casting.movie_id
WHERE movies.name='Titanic';