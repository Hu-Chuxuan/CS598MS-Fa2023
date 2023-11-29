SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 1942
AND startYear < 1999
AND genres LIKE '%Drama%'
AND tconst NOT IN ('tt0137523', 'tt0034492')
ORDER BY averageRating DESC
LIMIT 5