SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.primaryTitle = 'The Boss Baby'
AND title_ratings.averageRating > 7
AND title_principals.category = 'Animation'
AND title_principals.job = 'Director'
AND title_crew.directors = 'Tom McGrath'
AND title_basics.isAdult = 0
AND title_basics.startYear = 2017
AND title_basics.endYear = 2017
AND title_basics.runtimeMinutes > 80
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC