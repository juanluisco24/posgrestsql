SELECT director, count(director) AS "movies" FROM movies
GROUP BY director
ORDER BY "movies" DESC
LIMIT 10;