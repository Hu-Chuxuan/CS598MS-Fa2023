SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres
FROM title_basics
WHERE isAdult = 0 AND genres LIKE '%comedy%'
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE tconst = title_basics.tconst AND numVotes > 100
)
AND NOT EXISTS (
  SELECT 1
  FROM name_basics
  JOIN title_crew ON name_basics.nconst = title_crew.directors OR name_basics.nconst = title_crew.writers
  WHERE title_basics.tconst = title_crew.tconst
  AND name_basics.primaryProfession = 'Actor'
  AND title_crew.directors NOT IN (SELECT directors FROM title_crew WHERE tconst = title_basics.tconst)
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE title_basics.tconst = title_principals.tconst AND category = 'Actor' AND job = 'Lead'
)
AND startYear > 2000
AND endYear < 2020
AND runtimeMinutes > 80

