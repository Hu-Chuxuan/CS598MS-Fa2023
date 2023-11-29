SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Horror%'
AND startYear >= 2015
AND tconst NOT IN ('tt1234567') -- Replace with the tconst of 'The Ring (2017)'
ORDER BY averageRating DESC
LIMIT 10