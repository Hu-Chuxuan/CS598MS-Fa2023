SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, 
title_ratings.averageRating, title_ratings.numVotes, 
name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, 
title_crew.directors, title_crew.writers, 
title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.primaryTitle = 'Disney'
AND title_ratings.averageRating > 7
AND title_principals.category = 'Animated'
AND title_principals.job = 'Movie'
AND title_principals.characters = 'Animals'
AND name_basics.primaryName = 'Meryl Streep'
AND name_basics.birthYear = 1949
AND name_basics.deathYear = NULL
AND title_basics.startYear = 2010
AND title_basics.endYear = 2020
AND title_basics.runtimeMinutes > 90
AND title_crew.directors = 'Jennifer Lee'
AND title_crew.writers = 'Jennifer Lee'
AND title_principals.characters = 'Queen Elsa'

