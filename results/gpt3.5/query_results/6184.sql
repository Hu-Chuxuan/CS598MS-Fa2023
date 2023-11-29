SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Documentary%'
AND primaryTitle != 'Cosmos (2015)'
AND primaryTitle != 'Planet Earth Live (2010)'
AND primaryTitle != 'Earth'
AND startYear = 2007
ORDER BY averageRating DESC
LIMIT 5