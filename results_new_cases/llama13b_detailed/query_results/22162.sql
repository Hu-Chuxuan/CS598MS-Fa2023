SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND (
    runtimeMinutes > 90 AND
    genres LIKE '%Comedy%' AND
    genres LIKE '%Fantasy%'
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10