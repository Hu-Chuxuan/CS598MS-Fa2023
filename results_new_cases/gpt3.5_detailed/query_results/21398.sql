SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Adventure%' 
AND startYear BETWEEN 1980 AND 1990 
AND primaryTitle NOT LIKE '%The Goonies%' 
ORDER BY averageRating DESC 
LIMIT 5