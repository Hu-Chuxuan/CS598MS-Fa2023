SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 1975
AND startYear < 1995
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = 'A Nightmare on Elm Street'
  AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'A Nightmare on Elm Street' LIMIT 1)) > 0
)
