SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, name_basics.primaryName, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Terror'
AND title_ratings.numVotes > 1000
AND title_principals.category = 'Actors'
AND title_principals.job = 'Actor'
AND title_principals.characters LIKE '%Terror%'
AND name_basics.primaryName NOT IN (SELECT primaryName FROM name_basics WHERE birthYear > 1980)
AND title_basics.startYear BETWEEN 1970 AND 2019
AND title_basics.endYear BETWEEN 1970 AND 2019
AND title_basics.runtimeMinutes BETWEEN 70 AND 120
AND title_ratings.averageRating > 7
ORDER BY title_ratings.averageRating DESC