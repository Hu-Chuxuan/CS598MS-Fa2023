SELECT primaryTitle 
FROM title_basics 
WHERE (genres LIKE '%Animation%' OR genres LIKE '%Family%') 
AND startYear > 2014 
AND primaryTitle NOT IN ('How the Grinch Stole Christmas', 'Christmas Eve')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5