SELECT t.titleID AS 'Movie', t.name AS Title Name, r.averageRating AS Average Rating, c.category FROM ratings AS r JOIN titles as t ON r.movieId = t.id LEFT OUTER JOIN categories as c WHERE t.primaryTitle LIKE '%' ||? || '%' AND r.numvotes > 1 ORDER BY r.averageRating DESC LIMIT 6