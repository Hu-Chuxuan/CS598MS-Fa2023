SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Animation%' 
AND startYear >= 1990 
AND primaryTitle != 'The Swan Princess'
ORDER BY averageRating DESC
LIMIT 5