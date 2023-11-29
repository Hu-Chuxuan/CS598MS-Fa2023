SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Horror%' OR genres LIKE '%Thriller%' OR genres LIKE '%Mystery%'
AND startYear >= 2010 
AND tconst NOT IN ('tt1375666', 'tt1211837', 'tt0848228')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10