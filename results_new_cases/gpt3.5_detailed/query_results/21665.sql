SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Comedy%' 
ORDER BY averageRating DESC, numVotes DESC 
LIMIT 10