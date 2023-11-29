SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2008
AND genres LIKE '%Action%'
AND primaryTitle NOT IN ('The Dark Knight', 'Seven')
ORDER BY averageRating DESC
LIMIT 5