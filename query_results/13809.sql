SELECT t.* FROM title AS t JOIN name ON t.titleId = name.titleId AND category='Actor' WHERE t.primaryName LIKE '%Golden Globe%' OR t.name LIKE '%Golden Globe%'
ORDER BY rating DESC LIMIT 1