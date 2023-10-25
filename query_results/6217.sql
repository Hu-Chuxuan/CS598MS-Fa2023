SELECT * FROM (SELECT rating, COUNT(*) AS total_votes FROM ratings WHERE (titleType = "Movie") AND genre IN ('Comedy','Romantic') GROUP BY rating ORDER BY total_votes DESC LIMIT 5)