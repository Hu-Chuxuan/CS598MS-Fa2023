SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Adventure%' 
ORDER BY averageRating DESC, numVotes DESC 
LIMIT 10