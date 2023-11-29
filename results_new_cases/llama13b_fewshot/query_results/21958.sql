SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Science Fiction', tb.genres) > 0
AND startYear > 1980
AND startYear < 2008
AND EXISTS (
  SELECT 1
  FROM title_basics tb2
  WHERE tb2.primaryTitle = 'The Terminator'
  AND FIND_IN_SET(tb2.genres, tb.genres) > 0
)