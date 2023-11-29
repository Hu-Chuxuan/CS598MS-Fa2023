SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie'
AND t.primaryTitle = 'Young Guns'
AND t.startYear = 1988
AND n.primaryProfession IN ('actor', 'writer')
AND EXISTS (
  SELECT 1 FROM title_principals tp
  JOIN name_basics nb ON tp.nconst = nb.nconst
  WHERE tp.category = 'actor'
  AND nb.primaryName IN ('Charlie Sheen', 'Emilio Estevez', 'Danny Trejo')
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  JOIN name_basics nb ON tp.nconst = nb.nconst
  WHERE tp.category = 'writer'
  AND nb.primaryName IN ('Nicholas Kazan', 'James Mangold')
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  JOIN name_basics nb ON tp.nconst = nb.nconst
  WHERE tp.category = 'director'
  AND nb.primaryName IN ('Brian De Palma', 'John Hughes')
)
ORDER BY numVotes DESC, averageRating DESC