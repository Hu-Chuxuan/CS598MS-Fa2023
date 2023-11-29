SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 2007
AND genres LIKE '%Action%'
AND primaryTitle != 'Transformers'
ORDER BY averageRating DESC
LIMIT 5