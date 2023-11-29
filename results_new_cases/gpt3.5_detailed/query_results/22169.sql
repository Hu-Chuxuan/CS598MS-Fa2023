SELECT primaryTitle 
FROM title_basics 
WHERE startYear > 2012 
AND genres LIKE '%Horror%' 
AND tconst NOT IN ('tt1343097', 'tt0147800', 'tt0468569') 
ORDER BY averageRating DESC 
LIMIT 5