SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Action', tb.genres) > 0
AND EXISTS (
  SELECT 1
  FROM title_basics tb2
  WHERE tb2.primaryTitle = tb.primaryTitle
  AND FIND_IN_SET('Comedy', tb2.genres) > 0
  AND FIND_IN_SET('Action', tb2.genres) > 0
)
AND NOT EXISTS (
  SELECT 1
  FROM title_basics tb3
  WHERE tb3.primaryTitle = tb.primaryTitle
  AND FIND_IN_SET('Adult', tb3.genres) > 0
)