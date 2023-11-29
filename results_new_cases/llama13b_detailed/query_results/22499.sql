SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Animation%'
AND nb.primaryProfession LIKE '%actor%'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor'
  AND tp.job LIKE '%voice%'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor'
  AND tp.job NOT LIKE '%voice%'
)
AND tr.averageRating > (
  SELECT AVG(tr2.averageRating)
  FROM title_ratings tr2
  WHERE tr2.tconst = tb.tconst
  AND tr2.numVotes > 100
)
AND tb.startYear > 2010
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC