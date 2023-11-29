SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1960
AND startYear <= 1987
AND genres LIKE '%Fantasy%'
AND tconst NOT IN ('tt0093779', 'tt0051658')
ORDER BY averageRating DESC
LIMIT 5