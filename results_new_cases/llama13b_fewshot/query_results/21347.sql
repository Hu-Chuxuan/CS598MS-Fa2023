SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = 'Adam Sandler'
  AND FIND_IN_SET('Comedy', genres) > 0
)