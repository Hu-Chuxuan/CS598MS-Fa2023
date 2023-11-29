SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Animals', tb.genres) > 0
AND startYear > 1980
AND startYear < 2010
AND NOT EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = tb.primaryTitle
  AND startYear < 2000
)
