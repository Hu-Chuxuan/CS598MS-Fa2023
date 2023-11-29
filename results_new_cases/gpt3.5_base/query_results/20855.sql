SELECT primaryTitle, startYear, runtimeMinutes, genres
FROM title_basics
WHERE genres LIKE '%Comedy%' OR genres LIKE '%Action%'
AND startYear > 2010
AND primaryTitle NOT IN ('Click  (2010)', 'Black Panther (2018)')
ORDER BY RAND()
LIMIT 5