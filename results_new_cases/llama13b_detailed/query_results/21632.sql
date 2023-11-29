SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Action%' AND t.genres LIKE '%Adventure%'
AND n.primaryProfession LIKE '%Actor%'
ORDER BY tr.averageRating DESC, t.startYear DESC