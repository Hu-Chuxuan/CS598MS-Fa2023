SELECT DISTINCT(movieId), COUNT(*) AS count FROM
    ( SELECT * from title WHERE userInput = $userInput ) AS t JOIN
    	( SELECT * from title where genre IN ('Comedy') AND RATING > 7 AND VOTES >= 200 AND YEAR BETWEEN 2006-2019 GROUP BY genre ORDER BY AVG(RATING)) AS r ON t.title_id = r.genre