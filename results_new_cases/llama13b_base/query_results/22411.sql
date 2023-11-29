SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, title_principals.category, title_crew.directors
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
INNER JOIN title_principals ON title_basics.tconst = title_principals.tconst
INNER JOIN title_crew ON title_basics.tconst = title_crew.tconst
WHERE title_basics.genres = 'Action' AND title_basics.titleType = 'Movie' AND title_ratings.numVotes > 10000
AND title_principals.category = 'Superhero'
AND title_crew.directors = 'Brett Ratner'
AND title_basics.startYear = 2006
AND title_basics.endYear = 2018
AND title_basics.runtimeMinutes > 120
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE title_basics.tconst = title_ratings.tconst AND title_basics.title = 'X-Men: The Last Stand (2006)')
GROUP BY title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, title_principals.category, title_crew.directors
HAVING COUNT(DISTINCT title_basics.tconst) > 5
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC