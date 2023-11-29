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
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
WHERE title_basics.primaryTitle = 'Peter Rabbit (2018)'
AND title_ratings.averageRating > (SELECT AVG(title_ratings.averageRating) FROM title_ratings WHERE title_ratings.tconst IN (SELECT title_basics.tconst FROM title_basics WHERE title_basics.genres = 'Adventure' AND title_basics.startYear = 2015))
AND title_basics.genres = 'Adventure'
AND title_basics.startYear = 2015
AND NOT EXISTS (SELECT 1 FROM title_crew WHERE title_crew.tconst = title_basics.tconst AND title_crew.job = 'Director' AND title_crew.primaryName IN ('Ridley Scott', 'James Gunn'))
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE title_principals.tconst = title_basics.tconst AND title_principals.category = 'Actor' AND title_principals.job = 'Lead' AND title_principals.characters = 'Matt Damon')
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC