SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND primaryTitle LIKE '%Deadpool%'
AND startYear > 2016
ORDER BY averageRating DESC
LIMIT 5