SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('The Mask', 'Click')
ORDER BY averageRating DESC
LIMIT 5