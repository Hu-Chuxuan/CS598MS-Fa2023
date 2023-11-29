SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
INNER JOIN name_basics ON title_basics.tconst = name_basics.tconst
INNER JOIN title_crew ON title_basics.tconst = title_crew.tconst
INNER JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.primaryTitle IN ('Dumb and Dumber', 'Superbad')
AND title_ratings.averageRating > 7
AND title_ratings.numVotes > 10000
AND name_basics.primaryName IN ('Jim Carrey', 'Jeff Daniels', 'Seth Rogen', 'Evan Goldberg')
AND title_crew.directors IN ('Peter Farrelly', 'Bobby Farrelly', 'Ruben Fleischer', 'Joe and Anthony Russo')
AND title_principals.category IN ('Comedy', 'Action', 'Adventure')
AND title_principals.job IN ('Actor', 'Director', 'Writer')
AND title_principals.characters LIKE '%of%'