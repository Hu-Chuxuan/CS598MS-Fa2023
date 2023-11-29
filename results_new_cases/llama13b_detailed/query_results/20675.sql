SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Horror%' OR t.genres LIKE '%Thriller%'
AND n.primaryProfession LIKE '%Actor%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.nconst = n.nconst AND tp.category = 'Actor'
)
AND NOT EXISTS (
  SELECT 1 FROM title_crew tc
  WHERE tc.tconst = t.tconst AND tc.directors LIKE '%Peter Jackson%'
)
ORDER BY averageRating DESC, numVotes DESC