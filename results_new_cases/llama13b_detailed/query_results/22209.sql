SELECT * FROM title_basics
WHERE genre IN ('horror', 'thriller','mystery')
AND (
  SELECT AVG(rating)
  FROM title_ratings
  WHERE title_id = tconst
) > (
  SELECT AVG(rating)
  FROM title_ratings
  WHERE title_id = tconst
) - 0.5
ORDER BY AVG(rating) DESC