SELECT t.title_id AS id FROM titles as t INNER JOIN ratings r ON t.title_id = r.movieId WHERE r.rating > 7 AND r.numReviews >= 80