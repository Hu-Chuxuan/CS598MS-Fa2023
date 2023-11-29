SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2014
AND genres LIKE '%Action%'
AND primaryTitle NOT IN ('Die Hard (1988)', 'John Wick (2014)')
ORDER BY averageRating DESC
LIMIT 1