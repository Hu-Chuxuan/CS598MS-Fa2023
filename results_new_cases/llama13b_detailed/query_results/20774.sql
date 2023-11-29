SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Action' AND tb.genres LIKE '%Comedy'
AND nb.primaryProfession LIKE '%Actor%'
AND tr.averageRating > 6
ORDER BY tr.averageRating DESC, nb.primaryName ASC