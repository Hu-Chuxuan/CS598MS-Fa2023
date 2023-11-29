SELECT primaryTitle
FROM title_basics
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Robin Williams'
AND title_basics.genres LIKE '%Comedy%'
AND title_basics.tconst NOT IN ('tt0119214', 'tt0182789', 'tt1596363', 'tt0102057')
AND title_basics.tconst != 'tt1344976'
AND title_basics.startYear <= 2014
AND title_basics.titleType = 'movie'
ORDER BY title_basics.startYear DESC
LIMIT 5