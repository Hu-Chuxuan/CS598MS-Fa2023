SELECT movies.* FROM movies INNER JOIN genre ON movies.genre = genre.id WHERE genre.category LIKE 'romantic' AND movies.titleType LIKE '%hello%' OR movies.primaryProfession IN ('director','actor') ORDER BY rating DESC LIMIT 8