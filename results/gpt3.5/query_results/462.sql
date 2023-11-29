SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND averageRating >= 7
AND startYear >= 2000
AND startYear <= 2010
AND primaryTitle NOT IN ('Scary Movie (2000)', 'I Love You Phillip Morris (2009)')
ORDER BY numVotes DESC
LIMIT 1