SELECT * FROM title WHERE title_type = "movie" AND (title_genre IN ('Comedy','Horror') OR genre IN ('Action & Adventure')) GROUP BY title ORDER BY rating DESC LIMIT 1