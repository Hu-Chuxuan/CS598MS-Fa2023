SELECT t1.title_id, t1.title, t1.original_title, t1.start_year, t1.end_year, t1.runtime_minutes, t1.genres, t2.average_rating, t2.num_votes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_id = t2.title_id
JOIN name_basics n ON t1.primary_title = n.primary_name
WHERE t1.genres LIKE '%comedy%'
AND t2.average_rating > (
    SELECT AVG(t3.rating)
    FROM title_ratings t3
    WHERE t3.title_id IN (
        SELECT t4.title_id
        FROM title_basics t4
        JOIN title_principals t5 ON t4.title_id = t5.title_id
        WHERE t5.category = 'actor'
        AND t5.job = 'writer'
    )
)
AND t1.start_year BETWEEN 1980 AND 1990
AND t1.end_year BETWEEN 1985 AND 1995
AND t2.num_votes > 1000
AND NOT EXISTS (
    SELECT 1
    FROM title_ratings t3
    WHERE t3.title_id = t1.title_id
    AND t3.average_rating > t2.average_rating
)
ORDER BY t2.average_rating DESC