SELECT * FROM title_basics t
JOIN title_principals tp ON t.tconst = tp.tconst
JOIN name_basics n ON tp.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Animation%' AND t.runtimeMinutes <= 120
AND n.primaryProfession LIKE '%Actor%'
AND t.startYear > 2000
ORDER BY t.averageRating DESC, t.startYear DESC