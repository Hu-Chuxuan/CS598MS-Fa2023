SELECT * FROM title_basics
WHERE titleType ='movie' AND genres LIKE '%Action%'
AND (
  SELECT AVG(rating) FROM title_ratings
  WHERE title_id = tconst
) > (
  SELECT AVG(rating) FROM title_ratings
  WHERE title_id = tconst AND startYear < 2000
)
AND (
  SELECT COUNT(*) FROM title_principals
  WHERE title_id = tconst AND category LIKE '%Actor%'
) > (
  SELECT COUNT(*) FROM title_principals
  WHERE title_id = tconst AND category LIKE '%Actor%' AND startYear < 2000
)
ORDER BY averageRating DESC, numVotes DESC