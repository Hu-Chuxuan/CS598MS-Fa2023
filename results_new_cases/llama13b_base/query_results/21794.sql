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
    title_ratings.numVotes,
    name_basics.primaryName,
    name_basics.birthYear,
    name_basics.deathYear,
    name_basics.primaryProfession,
    name_basics.knownForTitles
FROM 
    title_basics
    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
    JOIN name_basics ON title_basics.tconst = name_basics.tconst
WHERE 
    title_basics.primaryTitle LIKE '%Club%'
    AND title_basics.genres LIKE '%Drama%'
    AND title_ratings.averageRating > 7
    AND name_basics.primaryName LIKE '%F%'
    AND name_basics.knownForTitles LIKE '%Star Wars%'
GROUP BY 
    title_basics.title,
    title_basics.primaryTitle,
    title_basics.originalTitle,
    title_basics.isAdult,
    title_basics.startYear,
    title_basics.endYear,
    title_basics.runtimeMinutes,
    title_basics.genres,
    title_ratings.averageRating,
    title_ratings.numVotes,
    name_basics.primaryName,
    name_basics.birthYear,
    name_basics.deathYear,
    name_basics.primaryProfession,
    name_basics.knownForTitles
HAVING 
    COUNT(title_basics.tconst) > 10
ORDER BY 
    title_basics.startYear DESC