SELECT 
    title_basics.title,
    title_basics.primaryTitle,
    title_basics.originalTitle,
    title_ratings.averageRating,
    title_crew.directors,
    title_principals.characters
FROM 
    title_basics
    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
    JOIN title_crew ON title_basics.tconst = title_crew.tconst
    JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
    title_basics.genres LIKE '%Science Fiction%'
    AND title_ratings.numVotes > 1000
    AND title_crew.directors LIKE '%Ron Howard%'
    AND title_principals.characters LIKE '%Wilson%'
    AND title_basics.startYear = 1985
    AND title_basics.endYear = 1985
    AND title_basics.runtimeMinutes > 90
    AND title_basics.isAdult = 0

GROUP BY 
    title_basics.title,
    title_basics.primaryTitle,
    title_basics.originalTitle

HAVING 
    AVG(title_ratings.averageRating) > 7
    AND COUNT(DISTINCT title_principals.characters) > 4

ORDER BY 
    AVG(title_ratings.averageRating) DESC,
    COUNT(DISTINCT title_principals.characters) DESC