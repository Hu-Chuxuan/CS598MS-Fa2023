SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Crime', tb.genres) > 0
AND FIND_IN_SET('Thriller', tb.genres) > 0
AND startYear > 1990
AND startYear < 2020
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings tr
  WHERE tr.tconst = tb.tconst
  AND tr.averageRating > 7
)
LIMIT 5