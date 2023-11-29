SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear < 1980
AND genres LIKE '%Comedy%'
AND tconst NOT IN ('tt0094012', 'tt0095953', 'tt0080339')
ORDER BY averageRating DESC
LIMIT 5