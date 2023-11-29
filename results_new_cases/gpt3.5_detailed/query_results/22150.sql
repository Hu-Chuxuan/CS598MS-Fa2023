SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2004
AND genres LIKE '%Drama%'
AND tconst NOT IN ('tt0098384', 'tt0101921', 'tt0332280')
ORDER BY averageRating DESC
LIMIT 5