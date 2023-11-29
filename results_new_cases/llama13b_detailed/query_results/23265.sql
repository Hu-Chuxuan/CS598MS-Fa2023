SELECT * FROM title_basics
WHERE
genres LIKE '%Animation%' AND
startYear <= 2004 AND
ENDYEAR >= 2004 AND
runtimeMinutes > 80

UNION

SELECT * FROM title_basics
WHERE
genres LIKE '%Comedy%' AND
startYear <= 2004 AND
ENDYEAR >= 2004 AND
runtimeMinutes > 80

UNION

SELECT * FROM title_basics
WHERE
genres LIKE '%Adventure%' AND
startYear <= 2004 AND
ENDYEAR >= 2004 AND
runtimeMinutes > 80

UNION

SELECT * FROM title_ratings
WHERE
tconst IN (SELECT tconst FROM title_basics WHERE (genres LIKE '%Animation%' OR genres LIKE '%Comedy%' OR genres LIKE '%Adventure%'))
AND numVotes > 1000

ORDER BY averageRating DESC

LIMIT 5