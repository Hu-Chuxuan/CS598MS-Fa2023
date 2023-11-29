SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Robot Apocalypse%'
AND titleType = 'movie'
AND startYear > 2010
ORDER BY averageRating DESC
LIMIT 10