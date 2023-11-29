SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Action%' AND tb.genres LIKE '%War%'
AND nb.primaryProfession LIKE '%Actor%'
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC, nb.primaryName ASC