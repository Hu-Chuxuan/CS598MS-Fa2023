SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Fantasy%'
AND startYear > 2001
AND averageRating > 7
AND primaryTitle != 'Fellowship of the Ring'
ORDER BY averageRating DESC
LIMIT 5