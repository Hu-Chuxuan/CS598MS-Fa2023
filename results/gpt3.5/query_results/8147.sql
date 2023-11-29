SELECT primaryTitle, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND startYear > 2000
AND primaryTitle NOT IN ('Blended', '50 First Dates')
ORDER BY averageRating DESC
LIMIT 1