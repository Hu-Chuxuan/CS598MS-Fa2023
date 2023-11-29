SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Horror%' AND tr.averageRating > 6 AND nb.primaryProfession LIKE '%Actor%'
ORDER BY tr.averageRating DESC, nb.primaryName ASC
LIMIT 5