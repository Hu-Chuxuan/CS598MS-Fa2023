SELECT primaryTitle
FROM title_basics
WHERE tconst IN (
    SELECT tconst
    FROM title_basics
    WHERE genres LIKE '%Comedy%'
)
AND tconst NOT IN ('tt1073498', 'tt0389860')
ORDER BY numVotes DESC
LIMIT 10