SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Musical%' 
AND startYear >= 1960 
AND startYear <= 1970 
AND averageRating > 7 
AND primaryTitle != 'Mary Poppins'
ORDER BY averageRating DESC 
LIMIT 1