SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 1975
AND startYear < 2015
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = tb.primaryTitle
  AND genres IN (SELECT genres FROM title_basics WHERE primaryTitle = 'Superbad' LIMIT 1)
)
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = tb.primaryTitle
  AND genres IN (SELECT genres FROM title_basics WHERE primaryTitle = 'Dumb and Dumber' LIMIT 1)
)