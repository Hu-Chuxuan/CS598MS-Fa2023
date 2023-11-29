SELECT t1.title, t1.primaryTitle, t1.originalTitle, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t2.averageRating > (
    SELECT AVG(t3.averageRating)
    FROM title_ratings t3
    WHERE t3.tconst IN (
        SELECT t4.tconst
        FROM title_basics t4
        WHERE t4.primaryName = 'Tom Hanks'
    )
)
AND t1.genres LIKE '%Drama%'
AND t1.startYear > 2000
AND t1.endYear < 2020
ORDER BY t2.averageRating DESC