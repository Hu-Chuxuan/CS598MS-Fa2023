SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n ON t1.primaryName = n.primaryName
WHERE t1.genres LIKE '%dark comedy%'
AND t2.averageRating > (
    SELECT AVG(t3.averageRating)
    FROM title_ratings t3
    WHERE t3.tconst IN (
        SELECT t4.tconst
        FROM title_ratings t4
        JOIN title_basics t5 ON t4.tconst = t5.tconst
        WHERE t5.titleType = 'Feature Film'
        AND t5.startYear = 2015
    )
)
AND NOT EXISTS (
    SELECT 1
    FROM title_ratings t3
    WHERE t3.tconst = t1.tconst
    AND t3.numVotes > 1000
)
AND NOT EXISTS (
    SELECT 1
    FROM title_ratings t3
    WHERE t3.tconst = t1.tconst
    AND t3.averageRating > 8
)
AND NOT EXISTS (
    SELECT 1
    FROM title_principals t4
    WHERE t4.tconst = t1.tconst
    AND t4.category = 'Actor'
    AND t4.job = 'Lead'
    AND t4.characters LIKE '%Fargo%'
)
ORDER BY t2.averageRating DESC, t1.startYear DESC