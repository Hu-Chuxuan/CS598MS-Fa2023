SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Mystery'
AND nb.primaryProfession LIKE '%Actor'
AND tc.directors LIKE '%Quentin%Tarantino'
AND tp.category LIKE '%Actor'
AND tp.job LIKE '%Jules%Winnfield'
AND tp.characters LIKE '%Vincent%Vega'
ORDER BY tb.startYear DESC