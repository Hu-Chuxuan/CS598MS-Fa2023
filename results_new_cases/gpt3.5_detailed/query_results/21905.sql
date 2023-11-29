SELECT primaryTitle
FROM title_basics
WHERE startYear >= 1980
AND startYear < 1985
AND genres LIKE '%Horror%'
AND tconst NOT IN ('tt0087554', 'tt0089467') 
ORDER BY numVotes DESC
LIMIT 10