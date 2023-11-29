SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 1999
AND genres LIKE '%Horror%'
AND tconst NOT IN ('tt0117571', 'tt3322940', 'tt0167404')
ORDER BY averageRating DESC
LIMIT 5