SELECT t1.title_id, t1.title, t1.originalTitle, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_id = t2.title_id
JOIN name_basics n ON t1.primaryTitle = n.primaryName
WHERE t1.genres = 'Science Fiction' AND t1.startYear = 1982
AND t2.averageRating > (
    SELECT AVG(t3.rating)
    FROM title_ratings t3
    WHERE t3.title_id IN (
        SELECT t4.title_id
        FROM title_basics t4
        JOIN title_ratings t5 ON t4.title_id = t5.title_id
        WHERE t4.primaryTitle = 'The Other Woman'
        AND t5.averageRating > 6
    )
)
AND t2.numVotes > 10000
AND t1.title NOT IN (SELECT title_id FROM title_basics WHERE primaryTitle = 'Ghostbusters')
GROUP BY t1.title_id
ORDER BY t2.averageRating DESC