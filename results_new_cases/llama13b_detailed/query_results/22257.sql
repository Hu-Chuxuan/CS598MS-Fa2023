SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.primaryTitle = 'Murder on the Orient Express (2017)'
AND nb.primaryProfession = 'actor'
AND EXISTS (
  SELECT 1 FROM title_principals tp
  JOIN name_basics nb2 ON tp.nconst = nb2.nconst
  WHERE tp.category = 'actor'
  AND nb2.primaryProfession = 'actor'
  AND nb2.knownForTitles = 'tt0053137,tt00319'
)
AND tr.averageRating > 5
ORDER BY tr.averageRating DESC