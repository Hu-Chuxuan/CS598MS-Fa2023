SELECT t.* FROM title AS t INNER JOIN cast AS c ON t.titleId = c.movieId AND c.characterId IN ('Tom Hanks')
ORDER BY rating DESC LIMIT 1