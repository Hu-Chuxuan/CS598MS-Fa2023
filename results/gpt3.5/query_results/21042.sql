SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle != 'Blockers'
AND startYear = 2018
AND genres LIKE '%Comedy%'
ORDER BY averageRating DESC
LIMIT 5