SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND startYear >= 1990 AND startYear <= 1999
AND primaryTitle != 'Aladdin'
ORDER BY averageRating DESC
LIMIT 5