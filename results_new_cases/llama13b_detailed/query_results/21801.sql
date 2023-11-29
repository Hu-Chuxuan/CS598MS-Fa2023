SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.primaryTitle LIKE '%Kiss the Girls%'
AND nb.primaryName LIKE '%Jennifer Aniston%'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  JOIN name_basics nb2 ON tp.nconst = nb2.nconst
  WHERE tp.category = 'actor'
  AND nb2.primaryName LIKE '%Jennifer Aniston%'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp2
  JOIN name_basics nb3 ON tp2.nconst = nb3.nconst
  WHERE tp2.category = 'actor'
  AND nb3.primaryName NOT LIKE '%Jennifer Aniston%'
)
AND tr.averageRating > 6
ORDER BY tr.averageRating DESC