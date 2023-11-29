SELECT primaryTitle, startYear, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Horror%'
AND startYear > 2000
AND startYear < 2018
AND averageRating > 6.5
AND numVotes > 500
ORDER BY averageRating DESC
LIMIT 5