SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND (primaryTitle != 'Galaxy Quest' AND primaryTitle != 'Stripes') 
AND startYear BETWEEN 1970 AND 2005 
AND genres LIKE '%Comedy%' 
ORDER BY averageRating DESC 
LIMIT 5