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
    title_basics.primaryTitle LIKE '%Predator%'
    OR title_basics.primaryTitle LIKE '%Drive%'
    AND title_ratings.numVotes > 1000
    AND title_crew.directors LIKE '%the%Coen%brothers%'
    OR title_principals.characters LIKE '%John%Goodman%'
    OR title_principals.characters LIKE '%Billy%Bob%Thornton%'
    AND title_basics.startYear BETWEEN 1980 AND 2011
    AND title_basics.runtimeMinutes > 90
    AND NOT title_basics.isAdult
GROUP BY 
    title_basics.title,
    title_basics.primaryTitle,
    title_ratings.averageRating,
    title_crew.directors,
    title_principals.characters
HAVING 
    COUNT(DISTINCT title_basics.tconst) > 5
ORDER BY 
    title_ratings.averageRating DESC,
    title_basics.primaryTitle ASC