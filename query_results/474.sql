SELECT DISTINCT tc.* FROM movies m JOIN cast c ON m.titleid = c.movieid AND c.character LIKE '%Girl%' WHERE m.year >= 2016