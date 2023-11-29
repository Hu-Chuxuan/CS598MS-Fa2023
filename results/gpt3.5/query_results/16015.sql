SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle != 'Frozen (2013)' 
AND primaryTitle != 'Tangled (2010)'
AND genres LIKE '%Animation%'
ORDER BY averageRating DESC
LIMIT 5