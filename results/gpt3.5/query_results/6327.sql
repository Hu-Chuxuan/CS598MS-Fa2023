SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Action%'
AND startYear > '2012'
AND primaryTitle != 'Wonder Woman  (2017)'
AND primaryTitle != 'The Avengers  (2012)'
ORDER BY averageRating DESC
LIMIT 5