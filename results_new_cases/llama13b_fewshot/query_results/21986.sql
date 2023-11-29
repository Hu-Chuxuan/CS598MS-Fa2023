SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 2010
AND startYear < 2020
AND EXISTS (
  SELECT 1
  FROM title_basics tb2
  WHERE tb2.primaryTitle = tb.primaryTitle
  AND FIND_IN_SET('The Possession', tb2.genres) > 0
  OR FIND_IN_SET('Evil Dead', tb2.genres) > 0
)
