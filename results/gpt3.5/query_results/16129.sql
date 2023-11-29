SELECT primaryTitle 
FROM title_basics 
WHERE startYear > 2007 
AND genres LIKE '%Crime%' 
AND tconst NOT IN ('tt0482571', 'tt0337578') 
ORDER BY averageRating DESC 
LIMIT 1