SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND NOT EXISTS (
  SELECT 1
  FROM title_basics tb2
  WHERE tb2.primaryTitle = tb.primaryTitle
  AND FIND_IN_SET('Animation', tb2.genres) > 0
)