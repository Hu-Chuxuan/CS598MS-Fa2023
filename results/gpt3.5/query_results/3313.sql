SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Adventure%'
AND primaryTitle != 'Kingsman: The Secret Service (2014)'
ORDER BY averageRating DESC
LIMIT 1