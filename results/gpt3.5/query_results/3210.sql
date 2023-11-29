SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear < 2000
AND startYear > 1980
AND genres NOT LIKE '%Comedy%'
AND genres NOT LIKE '%Science Fiction%'
AND averageRating > 6.5
ORDER BY numVotes DESC
LIMIT 1