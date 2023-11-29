SELECT *
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.startYear = 2012
AND tr.averageRating > 7
AND EXISTS (
  SELECT 1
  FROM title_principals tp
  JOIN name_basics nb ON tp.nconst = nb.nconst
  WHERE tp.category = 'actor'
  AND nb.primaryName = 'Emma Stone'
)
LIMIT 3
