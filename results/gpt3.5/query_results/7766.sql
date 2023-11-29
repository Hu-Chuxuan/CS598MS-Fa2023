SELECT primaryTitle, startYear, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 1953
AND genres LIKE '%Comedy%'
AND genres LIKE '%Romance%'
AND tconst NOT IN ('tt0054698', 'tt0043265', 'tt0032599')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5