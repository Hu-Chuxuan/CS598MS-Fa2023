SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Adventure%'
AND genres LIKE '%Comedy%'
AND startYear >= 2010
AND averageRating > 7
AND primaryTitle NOT IN ('Jumanji (2017)')
ORDER BY numVotes DESC
LIMIT 5