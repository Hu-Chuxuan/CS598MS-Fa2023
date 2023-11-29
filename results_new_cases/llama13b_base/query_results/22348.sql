SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, name_basics.primaryName, title_crew.directors, title_principals.category, title_principals.job
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres LIKE '%ghost%'
AND title_ratings.numVotes > 1000
AND name_basics.primaryName NOT IN (SELECT primaryName FROM name_basics WHERE knownForTitles IN (SELECT title FROM title_basics WHERE ghosts = 1))
AND title_principals.category NOT IN (SELECT category FROM title_principals WHERE job = 'Actor')
AND title_crew.directors NOT IN (SELECT directors FROM title_crew WHERE job = 'Actor')
AND title_basics.startYear BETWEEN 1970 AND 2020
AND title_basics.endYear BETWEEN 1970 AND 2020
AND title_basics.runtimeMinutes BETWEEN 60 AND 120
AND title_ratings.averageRating > 6.5
ORDER BY title_ratings.averageRating DESC