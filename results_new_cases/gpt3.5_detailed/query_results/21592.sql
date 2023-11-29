SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.genres LIKE '%Fantasy%' AND startYear < 2007
ORDER BY averageRating DESC
LIMIT 5