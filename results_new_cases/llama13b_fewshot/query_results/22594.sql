SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Ghost', tb.genres) > 0
AND startYear > 2000
AND startYear < 2020
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings tr
  WHERE tr.tconst = tb.tconst
  AND tr.averageRating > 7
)
LIMIT 5