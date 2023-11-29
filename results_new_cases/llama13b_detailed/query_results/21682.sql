SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.startYear BETWEEN 1980 AND 1990
AND tb.genres LIKE '%Foreign%'
AND tr.averageRating > 7
AND nb.primaryProfession LIKE '%Director%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'Actor'
)

ORDER BY tr.averageRating DESC