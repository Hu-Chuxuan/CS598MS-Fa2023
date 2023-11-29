SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Comedy%' AND t.startYear > 2000
AND EXISTS (
    SELECT 1 FROM title_principals tp
    JOIN name_basics n ON tp.nconst = n.nconst
    WHERE tp.category = 'actor' AND n.primaryProfession LIKE '%Comedy%'
)
AND NOT EXISTS (
    SELECT 1 FROM title_principals tp
    JOIN name_basics n ON tp.nconst = n.nconst
    WHERE tp.category = 'actor' AND n.primaryProfession NOT LIKE '%Comedy%'
)
AND t.runtimeMinutes > 80
ORDER BY t.startYear DESC, tr.averageRating DESC
LIMIT 5