SELECT primaryTitle
FROM title_basics
WHERE genres LIKE '%Comedy%'
AND startYear < 2006
AND tconst NOT IN ('tt0412715', 'tt0762107', 'tt0493405')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5