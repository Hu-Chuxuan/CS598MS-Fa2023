SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Crime%' 
ORDER BY averageRating DESC, numVotes DESC 
LIMIT 1