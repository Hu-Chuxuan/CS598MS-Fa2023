SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Romance%' AND genres LIKE '%Comedy%' 
AND tconst NOT IN ('tt0083929', 'tt0088847', 'tt4154756') 
ORDER BY averageRating DESC, numVotes DESC 
LIMIT 5