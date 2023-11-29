SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 2000
AND genres LIKE '%Musical%'
AND averageRating > 7
AND tconst NOT IN ('tt0077631', 'tt0427327')
ORDER BY numVotes DESC
LIMIT 5