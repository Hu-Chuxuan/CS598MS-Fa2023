SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'horror'
AND title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE numVotes > 1000)
AND title_principals.category = 'actor'
AND title_principals.job = 'director'
AND title_principals.characters = 'Francis Ford Coppola'
AND name_basics.primaryName = 'Francis Ford Coppola'
AND name_basics.birthYear = 1939
AND name_basics.deathYear = 2022
AND title_basics.startYear = 1991
AND title_basics.endYear = 2022
AND title_basics.runtimeMinutes > 90
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC