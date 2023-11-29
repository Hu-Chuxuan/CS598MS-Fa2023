SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 1973
AND genres LIKE '%Horror%'
AND averageRating >= 8
AND primaryTitle != 'The Exorcist'
ORDER BY averageRating DESC
LIMIT 5