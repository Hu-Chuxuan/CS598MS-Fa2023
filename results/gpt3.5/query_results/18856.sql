SELECT primaryTitle 
FROM title_basics
WHERE genres LIKE '%Action%' 
AND startYear > 2010 
AND primaryTitle NOT IN ('Wonder Woman','The Dark Knight')
ORDER BY averageRating DESC
LIMIT 3