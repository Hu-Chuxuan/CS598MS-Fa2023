SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Mystery', tb.genres) > 0
AND startYear > 2000
AND NOT EXISTS (
  SELECT 1
  FROM title_basics tb2
  WHERE tb2.primaryTitle = tb.primaryTitle
  AND tb2.startYear < 2010
)
AND NOT EXISTS (
  SELECT 1
  FROM title_basics tb3
  WHERE tb3.primaryTitle = tb.primaryTitle
  AND tb3.startYear > 2018
)