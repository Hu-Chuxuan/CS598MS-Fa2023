SELECT * FROM title_basics tb
INNER JOIN title_crew tc ON tb.tconst = tc.tconst
INNER JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.titleType ='movie'
AND tb.startYear BETWEEN 1980 AND 2017
AND tb.genres LIKE '%Animation%'
AND tp.category = 'actor'
AND tp.job NOT LIKE '%Animation%'
AND tc.directors NOT LIKE '%Animation%'
AND tc.writers NOT LIKE '%Animation%'
ORDER BY tb.runtimeMinutes DESC, tb.startYear DESC