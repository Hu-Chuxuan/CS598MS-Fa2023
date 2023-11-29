SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n1 ON t1.primaryName = n1.primaryName
WHERE t1.genres = 'Comedy'
AND t2.averageRating > (
    SELECT AVG(t3.averageRating)
    FROM title_ratings t3
    WHERE t3.tconst IN (
        SELECT t4.tconst
        FROM title_basics t4
        JOIN title_ratings t5 ON t4.tconst = t5.tconst
        WHERE t4.genres = 'Comedy'
        AND t5.numVotes > 1000
    )
)
AND t1.startYear BETWEEN 1980 AND 2020
AND t1.runtimeMinutes < 120
AND NOT EXISTS (
    SELECT 1
    FROM title_principals t3
    JOIN name_basics n2 ON t3.nconst = n2.nconst
    WHERE t3.category = 'Actor'
    AND n2.primaryProfession = 'Director'
    AND t3.job = 'Director'
    AND n2.primaryName IN (
        SELECT primaryName
        FROM name_basics
        WHERE birthYear > 1950
    )
)
ORDER BY t2.averageRating DESC, t1.startYear DESC