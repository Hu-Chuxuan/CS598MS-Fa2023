SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 1990
AND genres LIKE '%Comedy%'
AND tconst NOT IN ('tt0134273', 'tt0795461')
ORDER BY averageRating DESC
LIMIT 5