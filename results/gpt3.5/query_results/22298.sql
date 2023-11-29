SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Action%'
AND startYear > 2000
AND primaryTitle NOT IN ('Rush Hour','X-Men')
ORDER BY averageRating DESC
LIMIT 2