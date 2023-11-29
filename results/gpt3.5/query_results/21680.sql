SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Fantasy%'
AND startYear > 2000
AND tconst NOT IN ('tt0107286', 'tt0457430')
ORDER BY averageRating DESC
LIMIT 5