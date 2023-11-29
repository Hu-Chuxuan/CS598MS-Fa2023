SELECT t1.title_id, t1.primary_title, t1.genres, t2.average_rating, t2.num_votes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_id = t2.title_id
WHERE t1.genres LIKE '%Action%'
AND t2.average_rating > (
    SELECT AVG(t3.average_rating)
    FROM title_ratings t3
    WHERE t3.num_votes > 1000
)
AND t2.num_votes > 1000
ORDER BY t2.average_rating DESC