SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND (genres LIKE '%Horror%' OR genres LIKE '%Thriller%')
AND startYear > 1991
AND tconst NOT IN ('tt0102926', 'tt0285175', 'tt0102926')
ORDER BY averageRating DESC
LIMIT 5