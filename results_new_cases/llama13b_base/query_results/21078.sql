SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
INNER JOIN title_crew ON title_basics.tconst = title_crew.tconst
INNER JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres LIKE '%action%' AND title_basics.genres LIKE '%comedy%'
AND title_ratings.numVotes > 1000
AND title_crew.directors LIKE '%Ridley Scott%'
AND title_principals.characters LIKE '%Dwayne Johnson%'
GROUP BY title_basics.title, title_basics.primaryTitle
HAVING COUNT(DISTINCT title_basics.title) > 2
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC