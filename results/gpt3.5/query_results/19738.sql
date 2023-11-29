SELECT primaryTitle
FROM title_basics
WHERE titleType = 'movie'
AND startYear <= 2017
AND genres LIKE '%Horror%'
AND tconst NOT IN ('tt1396484', 'tt1457767')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5