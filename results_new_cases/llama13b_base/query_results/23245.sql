SELECT t1.title_id, t1.title, t1.original_title, t1.is_adult, t1.start_year, t1.end_year, t1.runtime_minutes, t1.genres, t2.average_rating, t2.num_votes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_id = t2.title_id
WHERE t1.genres = 'Animation' AND t1.original_title LIKE '%That Time Forgot'
AND t2.average_rating > (
    SELECT AVG(t3.rating)
    FROM title_ratings t3
    WHERE t3.title_id IN (
        SELECT t4.title_id
        FROM title_basics t4
        WHERE t4.title LIKE '%Seven%' OR t4.title LIKE '%Fatal Attraction%'
    )
)
ORDER BY t2.average_rating DESC