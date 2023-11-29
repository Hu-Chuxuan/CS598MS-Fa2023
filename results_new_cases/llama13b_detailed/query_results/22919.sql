SELECT * FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_crew c ON t.tconst = c.tconst
JOIN title_principals p ON t.tconst = p.tconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Science Fiction%' AND t.startYear >= 1979 AND t.endYear <= 1987
AND p.category = 'actor' AND p.job LIKE 'Special Effects%'
AND n.primaryProfession LIKE '%Director%'
AND c.directors LIKE '%Ridley Scott%'
ORDER BY t.averageRating DESC