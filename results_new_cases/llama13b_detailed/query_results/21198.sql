SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie'
AND t.primaryTitle = 'Game Night'
AND n.primaryProfession LIKE '%actor%'
AND EXISTS (
  SELECT 1 FROM title_crew tc
  JOIN title_principals tp ON tc.tconst = tp.tconst
  WHERE tp.category = 'actor'
  AND tc.directors LIKE '%Zootopia%'
)
AND EXISTS (
  SELECT 1 FROM title_crew tc
  JOIN title_principals tp ON tc.tconst = tp.tconst
  WHERE tp.category = 'actor'
  AND tc.directors LIKE '%The Incredibles (2004)%'
)
AND EXISTS (
  SELECT 1 FROM title_crew tc
  JOIN title_principals tp ON tc.tconst = tp.tconst
  WHERE tp.category = 'actor'
  AND tc.directors LIKE '%Wreck-It Ralph (2012)%'
)
ORDER BY averageRating DESC