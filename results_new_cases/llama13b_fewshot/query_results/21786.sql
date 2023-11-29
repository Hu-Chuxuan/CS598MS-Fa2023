SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 2010
AND exists (
  SELECT 1
  FROM title_ratings tr
  WHERE tr.tconst = tb.tconst
  AND tr.averageRating > 6.5
)
AND NOT EXISTS (
  SELECT 1
  FROM title_basics tb2
  WHERE tb2.tconst = tb.tconst
  AND tb2.genres = 'Romance'
)