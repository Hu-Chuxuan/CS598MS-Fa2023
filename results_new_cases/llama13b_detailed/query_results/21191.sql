SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Action%' AND tb.startYear <= 2022
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'director' AND tp.job LIKE '%Action%'
)
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC