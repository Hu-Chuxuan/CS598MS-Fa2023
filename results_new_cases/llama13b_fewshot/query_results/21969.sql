SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 1975
AND startYear < 1995
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = 'Halloween'
  AND FIND_IN_SET(genres, tb.genres) > 0
)
LIMIT 10