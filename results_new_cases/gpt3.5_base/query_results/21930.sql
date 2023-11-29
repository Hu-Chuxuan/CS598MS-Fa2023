SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings 
ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Comedy%' 
AND startYear > 1997 
AND startYear < 2022 
AND title_basics.tconst NOT IN ('tt0103064', 'tt0118842') 
ORDER BY averageRating DESC 
LIMIT 5