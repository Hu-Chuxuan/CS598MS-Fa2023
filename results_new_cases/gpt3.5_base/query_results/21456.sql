SELECT primaryTitle 
FROM title_basics 
WHERE startYear = 1986 
AND genres LIKE '%Action%'
AND tconst NOT IN ('tt0270980') 
ORDER BY averageRating DESC, numVotes DESC 
LIMIT 5