SELECT * FROM titles WHERE (titleType = "movie" AND actors IN ('Chris Pratt')) OR (actors NOT LIKE 'Chris Pratt' ) ORDER BY rating DESC LIMIT 1