SELECT * FROM title_basics
WHERE genres LIKE '%Fantasy%' AND genres LIKE '%Comedy%'
AND NOT isAdult = 1
AND (
  SELECT AVG(rating)
  FROM title_ratings
  WHERE title_id = tconst
) > (
  SELECT AVG(rating)
  FROM title_ratings
  WHERE title_id = tconst
) - 0.5
ORDER BY averageRating DESC