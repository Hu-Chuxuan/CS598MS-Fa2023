SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Fantasy', tb.genres) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = tb.primaryTitle
  AND FIND_IN_SET('Fantasy', genres) > 0
  AND FIND_IN_SET('Comedy', genres) > 0
)
