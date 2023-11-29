SELECT 
    t.title_basics.primaryTitle,
    t.title_basics.startYear,
    t.title_basics.runtimeMinutes,
    t.title_ratings.averageRating,
    t.title_crew.directors,
    t.title_principals.characters
FROM 
    title_basics t
    JOIN title_ratings tr ON t.title_basics.tconst = tr.tconst
    JOIN name_basics n ON t.title_basics.primaryName = n.nconst
    JOIN title_crew c ON t.title_basics.tconst = c.tconst
    JOIN title_principals p ON t.title_basics.tconst = p.tconst
WHERE 
    t.title_basics.genres LIKE '%horror%'
    AND t.title_ratings.numVotes > 1000
    AND n.birthYear BETWEEN 1980 AND 1990
    AND c.directors LIKE '%Guillermo del Toro%'
    AND p.job LIKE '%actor%'
    AND p.characters LIKE '%monster%'
ORDER BY 
    t.title_ratings.averageRating DESC