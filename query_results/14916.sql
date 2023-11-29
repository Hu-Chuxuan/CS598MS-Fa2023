SELECT * FROM
    title_basic AS b INNER JOIN 
    	title_rating   r ON b.primaryTitle = r.title_id AND r.averageRating >= 7 WHERE
        b.isAdult = true AND b.startYear > 1970 AND r.numVotes < 100 ORDER BY
        b.runtimeMinutes DESC LIMIT 5 OFFSET 0