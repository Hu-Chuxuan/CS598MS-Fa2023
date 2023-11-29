SELECT * FROM title_basics
WHERE genres LIKE '%Adventure%' AND runtimeMinutes < 120
AND (
  SELECT AVG(averageRating)
  FROM title_ratings
  WHERE title_id = tconst
) > (
  SELECT AVG(averageRating)
  FROM title_ratings
  WHERE title_id = tconst
) - 0.5
ORDER BY averageRating DESC