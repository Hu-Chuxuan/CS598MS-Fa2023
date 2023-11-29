SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2010
AND genres LIKE '%Romance%'
AND averageRating > 7
AND primaryTitle NOT IN ('A Wrinkle in Time', "Ender's Game")
ORDER BY averageRating DESC
LIMIT 5