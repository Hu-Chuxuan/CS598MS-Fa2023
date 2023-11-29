SELECT primaryTitle, startYear, runtimeMinutes, genres
FROM title_basics
WHERE titleType = 'movie'
AND startYear <= 1960
AND genres LIKE '%Drama%'
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5