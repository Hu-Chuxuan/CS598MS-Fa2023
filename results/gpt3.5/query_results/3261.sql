SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 1940
AND genres LIKE '%Animation%'
AND tconst NOT IN ('tt00381', 'tt00350') -- excluding 'Fantasia (1940)' and 'Bambi (1942)'
ORDER BY averageRating DESC
LIMIT 5