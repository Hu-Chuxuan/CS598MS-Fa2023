SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Action', tb.genres) > 0
AND EXISTS (
  SELECT 1
  FROM title_basics tb2
  WHERE tb2.primaryTitle IN (SELECT primaryTitle FROM title_basics WHERE startYear > 1975 AND startYear < 1995 LIMIT 5)
  AND FIND_IN_SET(tb2.genres, tb.genres) > 0
)