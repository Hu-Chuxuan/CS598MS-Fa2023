SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Ghost%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles NOT LIKE '%The Amityville Horror%'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor'
  AND tp.job NOT LIKE '%The Amityville Horror%'
)
ORDER BY tr.averageRating DESC, tb.startYear DESC