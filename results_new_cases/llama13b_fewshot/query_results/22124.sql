SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND startYear > 2010
AND startYear < 2020
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = 'Justice League'
  AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Justice League' LIMIT 1)) > 0
)
LIMIT 5