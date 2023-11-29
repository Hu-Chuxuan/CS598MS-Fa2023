SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND (genres LIKE '%Horror%' OR genres LIKE '%Thriller%')
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE tconst = title_basics.tconst AND category = 'actor' AND characters LIKE '%The Cabin in the Woods%'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE tconst = title_basics.tconst AND numVotes > 10
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10