SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Horror' AND title_basics.runtimeMinutes < 120
AND title_ratings.averageRating > 6
AND title_principals.category = 'Actors'
AND title_principals.job = 'Actor'
AND title_principals.characters LIKE '%Clown%'
AND title_basics.startYear > 2000
AND title_basics.endYear < 2020
AND NOT EXISTS (
  SELECT 1
  FROM title_basics
  JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
  JOIN name_basics ON title_basics.tconst = name_basics.tconst
  WHERE title_basics.title = 'It Follows (2014)'
)
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC