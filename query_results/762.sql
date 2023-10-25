SELECT DISTINCT t.titleId FROM movies AS m INNER JOIN title_ratings AS r ON m.movieId = r.movienameID WHERE (r.averageRating > 6 AND r.numVotes >= 100)