SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.primaryTitle = 'Gangster'
AND title_ratings.averageRating > 7
AND title_ratings.numVotes > 1000
AND name_basics.primaryName NOT IN ('Martin Scorsese', 'Robert De Niro') -- exclude directors and actors
AND title_crew.directors NOT IN ('Martin Scorsese', 'Robert De Niro') -- exclude directors
AND title_principals.job NOT IN ('Actor', 'Director') -- exclude actors and directors
AND title_principals.category NOT IN ('Crime', 'Drama') -- exclude crime and drama movies
AND title_basics.startYear BETWEEN 1980 AND 2010
AND title_basics.endYear BETWEEN 1980 AND 2010
AND title_basics.runtimeMinutes BETWEEN 90 AND 180