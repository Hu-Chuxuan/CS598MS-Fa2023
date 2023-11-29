SELECT 
    t.title_basics.primaryTitle,
    t.title_basics.startYear,
    t.title_basics.runtimeMinutes,
    t.title_ratings.averageRating,
    t.title_crew.directors,
    t.title_principals.characters
FROM 
    title_basics t
    JOIN title_ratings tr ON t.tconst = tr.tconst
    JOIN name_basics n ON t.primaryName = n.primaryName
    JOIN title_crew c ON t.tconst = c.tconst
    JOIN title_principals p ON t.tconst = p.tconst
WHERE 
    t.genres = 'Fantasy'
    AND t.startYear >= 2000
    AND t.runtimeMinutes < 120
    AND EXISTS (
        SELECT 
            1
        FROM 
            title_ratings tr2
        WHERE 
            tr2.tconst = t.tconst
            AND tr2.numVotes > 10000
            AND tr2.averageRating > 7
    )
    AND NOT EXISTS (
        SELECT 
            1
        FROM 
            title_ratings tr3
        WHERE 
            tr3.tconst = t.tconst
            AND tr3.numVotes > 10000
            AND tr3.averageRating < 5
    )
GROUP BY 
    t.title_basics.primaryTitle,
    t.title_basics.startYear,
    t.title_basics.runtimeMinutes
ORDER BY 
    t.title_ratings.averageRating DESC