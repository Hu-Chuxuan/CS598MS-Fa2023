SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Action%'
AND startYear >= 2014
AND averageRating >= 7
AND primaryTitle != 'Deadpool'
ORDER BY averageRating DESC
LIMIT 5