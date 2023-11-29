SELECT primaryTitle, averageRating, genres
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2000
AND genres LIKE '%Animation%'
AND genres LIKE '%Family%'
ORDER BY averageRating DESC
LIMIT 10