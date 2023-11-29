SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND tb.startYear = 1994
AND EXISTS (
  SELECT 1
  FROM title_basics
  WHERE primaryTitle = 'The Shawshank Redemption'
  AND FIND_IN_SET(genres, tb.genres) > 0
)