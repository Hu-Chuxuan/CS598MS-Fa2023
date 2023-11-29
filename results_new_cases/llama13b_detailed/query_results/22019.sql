SELECT * FROM title_basics tb
INNER JOIN title_crew tc ON tb.tconst = tc.tconst
INNER JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.titleType ='movie'
AND tb.startYear = 1981
AND tb.genres LIKE '%Action%'
AND tc.directors = 'nm0005690'
AND tp.category = 'director'
AND tp.job = 'director'
AND tp.characters = '[Director]'
AND tb.primaryTitle = 'The Professional'

ORDER BY tb.runtimeMinutes DESC, tp.ordering ASC
LIMIT 5