SELECT DISTINCT tc.* FROM movies AS m JOIN cast AS c ON m.imdbID = c.movieId AND m.title_type='feature' WHERE c.character IS NOT NULL ORDER BY m.startYear DESC