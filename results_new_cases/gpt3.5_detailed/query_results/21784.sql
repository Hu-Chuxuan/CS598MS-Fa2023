SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Comedy%' 
AND startYear >= 1990 
AND tconst NOT IN ('tt0090556', 'tt0112641', 'tt0099685', 'tt0104952')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5