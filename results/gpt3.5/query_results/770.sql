SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Drama%'
AND startYear > 2000
ORDER BY averageRating DESC
LIMIT 10