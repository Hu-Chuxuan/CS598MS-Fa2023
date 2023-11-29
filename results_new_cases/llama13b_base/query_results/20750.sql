SELECT 
    t1.title, t1.tconst, t1.runtimeMinutes, t1.genres,
    AVG(tr.rating) AS avg_rating,
    COUNT(tr.title_id) AS num_votes
FROM
    title_basics t1
    JOIN title_ratings tr ON t1.tconst = tr.title_id
    JOIN name_basics n ON t1.primaryName = n.name_id
WHERE
    t1.genres LIKE '%Romance%'
    AND t1.startYear = 2004
    AND EXISTS (
        SELECT 1 FROM title_ratings tr2
        WHERE tr2.title_id = t1.tconst
        AND tr2.averageRating > (
            SELECT AVG(tr3.rating)
            FROM title_ratings tr3
            WHERE tr3.title_id = t1.tconst
        )
    )
GROUP BY
    t1.title, t1.tconst
HAVING
    AVG(tr.rating) > (
        SELECT AVG(tr4.rating)
        FROM title_ratings tr4
        WHERE tr4.title_id = t1.tconst
    )
    AND COUNT(tr.title_id) > (
        SELECT COUNT(tr5.title_id)
        FROM title_ratings tr5
        WHERE tr5.title_id = t1.tconst
    )
