SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Fantasy%' OR genres LIKE '%Action%'
AND startYear > 1990
AND startYear < 2000
AND primaryTitle != 'Highlander II: The Quickening'
ORDER BY averageRating DESC
LIMIT 5