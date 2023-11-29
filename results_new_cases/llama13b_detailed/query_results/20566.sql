SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%adaptation%'
AND tp.category = 'actor'
AND nb.primaryName LIKE '%book%'
AND tc.directors LIKE '%Marvel%'
AND tc.writers LIKE '%Marvel%'
ORDER BY tb.startYear DESC