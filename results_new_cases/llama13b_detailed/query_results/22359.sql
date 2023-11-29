SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.startYear = 1997 AND t.runtimeMinutes < 180
AND n.primaryProfession IN ('actor', 'actress')
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = t.tconst AND tp.category = 'actor' AND tp.job NOT LIKE '%(singer|musician|dancer)'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = t.tconst AND tp.category = 'actress' AND tp.job LIKE '%(singer|musician|dancer)'
)
AND NOT EXISTS (
  SELECT 1 FROM title_crew dc
  WHERE dc.tconst = t.tconst AND dc.directors NOT LIKE '%(singer|musician|dancer)'
)
AND NOT EXISTS (
  SELECT 1 FROM title_crew dc
  WHERE dc.tconst = t.tconst AND dc.writers NOT LIKE '%(singer|musician|dancer)'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp2
  WHERE tp2.tconst = t.tconst AND tp2.category = 'actor' AND tp2.job LIKE '%(singer|musician|dancer)'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp3
  WHERE tp3.tconst = t.tconst AND tp3.category = 'actress' AND tp3.job NOT LIKE '%(singer|musician|dancer)'
)
ORDER BY t.titleType, t.startYear, t.runtimeMinutes, n.primaryName
LIMIT 5