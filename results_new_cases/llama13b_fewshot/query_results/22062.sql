SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Romance', tb.genres) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND startYear > 1980
AND startYear < 1995
AND NOT EXISTS (
  SELECT 1
  FROM title_basics tb2
  WHERE tb2.primaryTitle = tb.primaryTitle
  AND FIND_IN_SET('Adult', tb2.genres) > 0
)