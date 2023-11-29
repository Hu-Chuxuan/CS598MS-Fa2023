SELECT * FROM title_basics
WHERE genre LIKE '%Science Fiction%'
AND isAdult = 0
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