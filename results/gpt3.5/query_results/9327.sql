SELECT primaryTitle 
FROM title_basics 
WHERE startYear >= 2010 
AND genres LIKE '%Animation%' 
AND tconst NOT IN ('tt2488496', 'tt2015381', 'tt2820852', 'tt0369610')
ORDER BY numVotes DESC
LIMIT 5