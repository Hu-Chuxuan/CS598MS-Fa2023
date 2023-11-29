SELECT 
    title_basics.title,
    title_basics.primaryTitle,
    title_basics.originalTitle,
    title_basics.isAdult,
    title_basics.startYear,
    title_basics.endYear,
    title_basics.runtimeMinutes,
    title_basics.genres,
    title_ratings.averageRating,
    title_ratings.numVotes
FROM 
    title_basics
    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE 
    title_basics.genres LIKE '%Action and Adventure%'
    AND title_ratings.numVotes > 1000
    AND title_ratings.averageRating > 7
ORDER BY 
    title_ratings.averageRating DESC,
    title_basics.startYear DESC
LIMIT 
    5