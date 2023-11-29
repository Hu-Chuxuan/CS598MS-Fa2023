SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Drama%' 
AND startYear > 2000 
AND averageRating > 7 
AND primaryTitle NOT IN ('Seven', 'Wind River') 
ORDER BY averageRating DESC