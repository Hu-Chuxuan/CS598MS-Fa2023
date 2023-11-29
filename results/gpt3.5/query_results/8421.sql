SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.genres LIKE '%Romance%'
AND title_basics.primaryTitle != 'Austenland'
AND startYear <= 2013
ORDER BY averageRating DESC
LIMIT 5