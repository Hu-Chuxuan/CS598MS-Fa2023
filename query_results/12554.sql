SELECT t.* FROM title AS t JOIN title_ratings AS r ON t.titleID = r.movieID WHERE t.primaryTitle LIKE '%' || $1 || '%'