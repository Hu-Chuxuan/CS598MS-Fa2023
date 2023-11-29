SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Musical%'
AND startYear >= 2000
AND startYear <= 2020
AND primaryTitle != 'La La Land'
ORDER BY numVotes DESC
LIMIT 5