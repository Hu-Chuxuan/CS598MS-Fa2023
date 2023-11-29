SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Action%'
AND nb.primaryProfession LIKE '%Actor%'
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC