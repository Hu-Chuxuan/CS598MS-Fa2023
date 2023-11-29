SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
WHERE primaryTitle LIKE '%Ferdinand%' OR primaryTitle LIKE '%The Secret Life of Pets%'
AND (
  SELECT COUNT(*)
  FROM title_ratings
  WHERE tconst = title_basics.tconst AND startYear = 2016
) > 1
AND (
  SELECT COUNT(*)
  FROM title_ratings
  WHERE tconst = title_basics.tconst AND startYear = 2013
) > 1
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE tconst = title_basics.tconst AND startYear = 2017
)
ORDER BY averageRating DESC, numVotes DESC