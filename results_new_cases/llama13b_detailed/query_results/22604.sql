SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType ='movie'
AND tr.averageRating > 7
AND tb.genres LIKE '%Action%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job = 'leading'
)
LIMIT 5