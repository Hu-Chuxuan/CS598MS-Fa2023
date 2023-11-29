SELECT * FROM title_basics
WHERE genres LIKE '%Comedy%'
AND (
  SELECT AVG(averageRating)
  FROM title_ratings
  WHERE title_id = tconst
) > (
  SELECT AVG(averageRating)
  FROM title_ratings
  WHERE title_id = tconst
) / 2
ORDER BY averageRating DESC