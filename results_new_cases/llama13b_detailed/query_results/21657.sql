SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Action%' AND t.startYear > 1990 AND t.endYear < 2020
AND n.primaryProfession LIKE '%Actor%'
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE t.tconst = p.tconst AND p.category = 'Actor')
ORDER BY tr.averageRating DESC, t.startYear DESC