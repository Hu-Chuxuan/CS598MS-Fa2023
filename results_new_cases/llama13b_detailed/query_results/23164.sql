SELECT * FROM title_basics
WHERE titleType ='movie'
AND (
  (genres LIKE '%Comedy%' AND genres LIKE '%Horror%' AND genres LIKE '%Adventure%')
  OR
  (genres LIKE '%Action%' AND genres LIKE '%Thriller%')
)
AND (
  (primaryTitle LIKE '%Girls%' OR primaryTitle LIKE '%Night%')
  OR
  (primaryTitle LIKE '%Fun%' AND primaryTitle NOT LIKE '%Girls%')
)
AND (
  (startYear >= 2000 AND startYear <= 2020)
  OR
  (startYear >= 1970 AND startYear <= 1990)
)
AND (
  NOT EXISTS (
    SELECT * FROM title_ratings
    WHERE tconst = title_basics.tconst
    AND numVotes > 1000
  )
)
ORDER BY averageRating DESC, numVotes DESC