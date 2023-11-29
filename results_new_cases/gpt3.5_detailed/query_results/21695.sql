SELECT primaryTitle 
FROM title_basics 
WHERE startYear > 1999 
AND genres LIKE '%Comedy%' 
AND genres LIKE '%Drama%' 
AND tconst NOT IN ('tt0116282', 'tt5463162', 'tt0116282', 'tt5463162') 
ORDER BY averageRating DESC 
LIMIT 5