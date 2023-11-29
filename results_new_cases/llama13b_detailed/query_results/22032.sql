SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.startYear BETWEEN 1980 AND 2011
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Thriller%'
AND EXISTS (
  SELECT 1 FROM title_ratings tr
  WHERE tb.tconst = tr.tconst
  AND tr.averageRating > 6
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp2
  WHERE tp2.nconst = nb.nconst
  AND tp2.category = 'actor'
  AND tp2.job = 'director'
)
ORDER BY tb.startYear, tb.titleType, tb.primaryTitle

LIMIT 10