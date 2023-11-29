SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND startYear > 1980
AND startYear < 2018
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = 'The Terminator'
  AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Terminator' LIMIT 1)) > 0
)
AND NOT EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = 'Making a Murderer'
  AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Making a Murderer' LIMIT 1)) > 0