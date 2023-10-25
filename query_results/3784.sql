SELECT t.* FROM titles AS t INNER JOIN casts c ON c.movie = t.title WHERE c.job = "actor" AND c.characters IN ('Bill Murray','Jim Carrey') GROUP BY casting_id ORDER BY rating DESC LIMIT 1