SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Animation%'
AND startYear >= 2010
AND primaryTitle != 'Moana'
ORDER BY averageRating DESC
LIMIT 5