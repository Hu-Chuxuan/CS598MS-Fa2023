SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.originalTitle = 'Caddyshack'
AND startYear < 1988
ORDER BY averageRating DESC
LIMIT 5