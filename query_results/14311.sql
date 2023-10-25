SELECT * FROM (
    SELECT rating, count(*) AS numvoters
        FROM ratings GROUP BY genre ORDER BY avg(rating) DESC LIMIT 7