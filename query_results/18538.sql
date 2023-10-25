SELECT * FROM movies WHERE (title_type = "Movie" AND (genre IN ('Drama','Comedy') OR genre IS NULL) AND (rating >.8)) ORDER BY rating DESC LIMIT 6