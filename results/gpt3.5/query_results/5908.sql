SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Sci-Fi%'
OR genres LIKE '%Documentary%'
AND primaryTitle != 'Cosmos  (2015)'
AND startYear > 2010
ORDER BY averageRating DESC
LIMIT 5