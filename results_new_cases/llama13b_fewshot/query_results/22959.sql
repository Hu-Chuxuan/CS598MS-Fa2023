SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND NOT EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = tb.primaryTitle
  AND genres NOT IN ( 'Comedy', 'Romance', 'Musical' )
)
AND startYear > 1975
AND startYear < 2015