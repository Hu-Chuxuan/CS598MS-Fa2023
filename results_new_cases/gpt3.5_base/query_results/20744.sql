SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Horror%' OR genres LIKE '%Thriller%'
AND startYear >= 2010 
AND tconst NOT IN ('tt2243537', 'tt4160708', 'tt0884328')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5