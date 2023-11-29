SELECT primaryTitle, startYear, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2000
AND genres LIKE '%Animation%'
AND (primaryTitle != 'The Secret Life of Pets' AND primaryTitle != 'Moana')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5