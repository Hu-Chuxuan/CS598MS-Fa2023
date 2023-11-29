SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND FIND_IN_SET('Adventure', tb.genres) > 0
AND FIND_IN_SET('Science Fiction', tb.genres) > 0
AND startYear > 2010
AND startYear < 2020
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = 'Black Panther'
  AND FIND_IN_SET(genres, tb.genres) > 0
)