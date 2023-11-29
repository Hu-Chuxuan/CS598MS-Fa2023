SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
WHERE titleType ='movie' AND genres LIKE '%Science Fiction'
AND (
  SELECT COUNT(*)
  FROM title_ratings
  WHERE tconst = title_basics.tconst AND numVotes > 100
) > 1
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5