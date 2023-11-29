SELECT t1.title, t1.originalTitle, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n ON t1.primaryName = n.primaryName
JOIN title_crew c ON t1.directors = c.directors
JOIN title_principals p ON t1.tconst = p.tconst
WHERE t1.genres = 'Science Fiction'
AND t2.averageRating > (
    SELECT AVG(t3.rating)
    FROM title_ratings t3
    WHERE t3.tconst IN (
        SELECT t4.tconst
        FROM title_ratings t4
        WHERE t4.averageRating > 7
        AND t4.numVotes > 1000
    )
)
AND p.category = 'Actor'
AND p.job = 'Lead'
AND p.characters LIKE '%alien%'
ORDER BY t2.averageRating DESC