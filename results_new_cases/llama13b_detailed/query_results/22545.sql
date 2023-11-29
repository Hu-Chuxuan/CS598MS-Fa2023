SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE nb.primaryProfession = 'actor'
AND tc.directors = 'nm0085156'
AND tp.category = 'actor'
AND tp.job = 'actor'
AND tb.genres LIKE '%Animation%'
AND tb.runtimeMinutes > 90
AND tb.startYear > 2000
ORDER BY tb.startYear DESC, tp.characters ASC
LIMIT 5