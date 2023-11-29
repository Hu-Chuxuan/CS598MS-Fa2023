SELECT primaryTitle
FROM title_basics
WHERE startYear = 1990
  AND titleType = 'movie'
  AND primaryTitle != 'It (1990)'
  AND genres LIKE '%Horror%'
ORDER BY numVotes DESC
LIMIT 5