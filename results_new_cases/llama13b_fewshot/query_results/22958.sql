SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('War', tb.genres) > 0
AND FIND_IN_SET('Drama', tb.genres) > 0
AND startYear > 1990
AND startYear < 2020
AND NOT EXISTS (
  SELECT 1 FROM title_basics
  WHERE primaryTitle = tb.primaryTitle AND genres = 'Horror'
)