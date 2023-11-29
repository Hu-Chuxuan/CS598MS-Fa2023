SELECT primaryTitle, startYear, runtimeMinutes, genres
FROM title_basics
WHERE startYear <= 1980
AND genres LIKE '%Comedy%'
AND tconst NOT IN ('tt0080339') -- exclude Airplane from the recommendations
ORDER BY numVotes DESC
LIMIT 5