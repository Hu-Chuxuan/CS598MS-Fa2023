SELECT * FROM
(title_basic
INNER JOIN
name_basic ON tb.primaryTitle = nb.primaryName
WHERE tb.isAdult=TRUE AND
tb.startYear>1860 AND
tb.endYear<CURRENT_TIMESTAMP+INTERVAL 1 YEAR
AND tb.runtimeMinutes>=50 AND
nb.deathYear IS NULL ORDER BY tb.genre ASC LIMIT 3