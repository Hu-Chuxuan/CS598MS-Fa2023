SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Comedy%' 
AND startYear >= 2010 
AND startYear <= 2020 
AND primaryTitle != 'The Commuter (2017)'
ORDER BY numVotes DESC 
LIMIT 5