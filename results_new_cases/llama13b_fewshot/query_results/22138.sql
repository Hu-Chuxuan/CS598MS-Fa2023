SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Adventure', tb.genres) > 0
AND startYear > 1975
AND startYear < 1995
AND NOT EXISTS (
  SELECT 1
  FROM title_basics tb2
  WHERE tb2.primaryTitle = tb.primaryTitle
  AND tb2.startYear > 1985
)
LIMIT 3