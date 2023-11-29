SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 1980
AND startYear < 2016
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = 'Children of the Corn'
  AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Children of the Corn' LIMIT 1)) > 0
)
