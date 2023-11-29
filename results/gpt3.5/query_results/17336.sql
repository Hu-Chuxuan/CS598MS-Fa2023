SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Horror%'
AND primaryTitle NOT LIKE '%Chucky%'
AND startYear > 1979
ORDER BY averageRating DESC
LIMIT 5