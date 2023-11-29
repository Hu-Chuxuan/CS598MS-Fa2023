SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 2017
AND genres LIKE '%Music%'
AND primaryTitle NOT IN ('Moana', 'Jumanji')
ORDER BY averageRating DESC
LIMIT 5