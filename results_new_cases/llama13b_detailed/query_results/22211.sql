SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND (
  SELECT COUNT(*)
  FROM title_ratings
  WHERE tconst = title_basics.tconst AND numVotes > 100
) > 1
AND (
  SELECT COUNT(*)
  FROM title_principals
  WHERE tconst = title_basics.tconst AND category = 'actor' AND job = 'comedian'
) > 1
AND (
  SELECT COUNT(*)
  FROM title_crew
  WHERE tconst = title_basics.tconst AND directors = ANY (
    SELECT nconst
    FROM name_basics
    WHERE primaryName = 'Quentin Tarantino'
  )
) > 1
AND (
  SELECT COUNT(*)
  FROM title_principals
  WHERE tconst = title_basics.tconst AND category = 'actor' AND job = 'comedian'
  AND (
    SELECT COUNT(*)
    FROM name_basics
    WHERE nconst = principal.nconst AND primaryProfession = 'actor'
  ) > 1
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5