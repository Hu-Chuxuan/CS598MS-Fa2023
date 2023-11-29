SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Action%' 
ORDER BY numVotes DESC 
LIMIT 5