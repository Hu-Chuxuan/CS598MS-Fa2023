SELECT primaryTitle
FROM title_basics
WHERE genres LIKE '%Adventure%'
AND startYear >= 2010
AND tconst NOT IN ('tt1825683', 'tt1365519')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5