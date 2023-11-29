SELECT primaryTitle
FROM title_basics
WHERE genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Scary Movie (2000)', 'American Pie  (1999)', 'Click  (2006)')
ORDER BY numVotes DESC
LIMIT 5