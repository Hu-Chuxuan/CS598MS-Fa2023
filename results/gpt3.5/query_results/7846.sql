SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.genres LIKE '%Comedy%'
AND title_basics.startYear < 2000
AND title_basics.tconst NOT IN ('tt0217333', 'tt0193653', 'tt0425011', 'tt4714782')
ORDER BY averageRating DESC
LIMIT 5