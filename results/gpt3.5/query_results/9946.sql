SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Animation%'
AND startYear > 2000
AND primaryTitle NOT IN ('Inside Out', 'The Muppets', 'Monsters, Inc.')
ORDER BY averageRating DESC
LIMIT 5