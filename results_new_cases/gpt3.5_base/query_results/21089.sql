SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Science%' 
    AND genres LIKE '%Comedy%' 
    AND tconst NOT IN ('tt0119282', 'tt0119654', 'tt0848228')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5