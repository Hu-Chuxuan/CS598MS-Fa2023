SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 1975
AND startYear < 1995
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = tb.primaryTitle
  AND genres IN (SELECT genres FROM title_basics WHERE primaryTitle = 'Carrie' LIMIT 1)
)
OR EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = tb.primaryTitle
  AND genres IN (SELECT genres FROM title_basics WHERE primaryTitle = 'The Shining' LIMIT 1)
)
OR EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = tb.primaryTitle
  AND genres IN (SELECT genres FROM title_basics WHERE primaryTitle = 'Thinner' LIMIT 1)
)