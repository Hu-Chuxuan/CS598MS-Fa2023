SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, 
title_ratings.averageRating, title_ratings.numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryName = name_basics.primaryName
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Animation'
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'The Secret Life of Pets' OR primaryTitle = 'Moana')
)
AND title_basics.startYear > (SELECT MAX(startYear) FROM title_basics WHERE primaryTitle = 'The Secret Life of Pets' OR primaryTitle = 'Moana')
AND title_basics.endYear < (SELECT MIN(endYear) FROM title_basics WHERE primaryTitle = 'The Secret Life of Pets' OR primaryTitle = 'Moana')
AND title_basics.runtimeMinutes > (SELECT AVG(runtimeMinutes) FROM title_basics WHERE primaryTitle = 'The Secret Life of Pets' OR primaryTitle = 'Moana')
AND title_principals.category = 'Actor'
AND title_principals.job = 'Voice'
AND title_crew.directors = 'Byron Howard'
AND title_crew.writers = 'Jared Bush'
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC