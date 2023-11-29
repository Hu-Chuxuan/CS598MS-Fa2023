SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%' AND startYear > 2000
AND title_basics.tconst NOT IN ('tt0387564', 'tt0111161', 'tt0110357')
ORDER BY averageRating DESC
LIMIT 5