SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE isAdult = 1
AND genres LIKE '%Romance%' 
AND genres LIKE '%Thriller%'
AND primaryTitle NOT IN ('Seven', 'The Godfather', 'Godfather')
AND startYear > 1991
ORDER BY averageRating DESC
LIMIT 5