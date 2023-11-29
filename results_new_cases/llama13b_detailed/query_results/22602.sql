SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.startYear < 1980
AND nb.primaryProfession IN ('actor', 'writer')
AND EXISTS (
  SELECT 1 FROM title_crew tc
  JOIN title_principals tp ON tc.tconst = tp.tconst
  WHERE tp.category = 'director' AND tc.directors = 'nm0005690'
)
AND EXISTS (
  SELECT 1 FROM title_crew tc
  JOIN title_principals tp ON tc.tconst = tp.tconst
  WHERE tp.category = 'writer' AND tc.writers = 'nm0085156'
)
AND tb.titleType NOT IN ('short', 'tvseries')
AND NOT EXISTS (
  SELECT 1 FROM title_ratings tr2
  WHERE tr2.tconst = tb.tconst AND tr2.averageRating > 7.5
)
ORDER BY tr.averageRating DESC, tb.startYear DESC