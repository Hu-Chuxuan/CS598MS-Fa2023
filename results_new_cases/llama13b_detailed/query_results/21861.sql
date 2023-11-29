SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.primaryTitle IN ('Dumb and Dumber', 'Superbad')
AND nb.primaryProfession IN ('actor', 'writer')
AND tr.averageRating > 6
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job = 'Lucasfilm'
)
ORDER BY tr.averageRating DESC, tb.startYear DESC