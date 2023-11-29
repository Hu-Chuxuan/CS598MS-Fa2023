SELECT t.title_basics, t.genres, c.category, c.job, c.characters
FROM title_basics t
JOIN title_crew c ON t.tconst = c.tconst
WHERE t.genres LIKE '%Action%' AND t.genres LIKE '%Superhero%' AND c.category = 'director'
AND EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE tconst = t.tconst AND genre LIKE '%Action%' AND genre LIKE '%Superhero%'
)
ORDER BY averageRating DESC, numVotes DESC