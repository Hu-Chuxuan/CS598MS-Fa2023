SELECT DISTINCT movies.* FROM movies INNER JOIN ratings ON movies.titleID = ratings.movieID WHERE rating > 7 AND genre IN ('Comedy') ORDER BY avg(rating), numvotes DESC LIMIT 1