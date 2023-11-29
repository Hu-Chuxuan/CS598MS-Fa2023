SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2010
AND runtimeMinutes >= 90
AND genres LIKE '%Animation%'
AND averageRating >= 6.0
AND numVotes >= 1000
AND tconst NOT IN ('tt3606752', 'tt2293640')
ORDER BY averageRating DESC
LIMIT 5