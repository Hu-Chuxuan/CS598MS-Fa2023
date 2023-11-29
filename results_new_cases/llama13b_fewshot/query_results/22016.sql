SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Adventure', tb.genres) > 0
AND FIND_IN_SET('Action', tb.genres) > 0
AND startYear > 1980
AND startYear < 1990
AND NOT EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = tb.primaryTitle
    AND startYear > 2000
)