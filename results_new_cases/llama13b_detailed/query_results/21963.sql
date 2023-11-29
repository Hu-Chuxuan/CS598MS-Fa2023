SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
WHERE genres LIKE '%Action%' AND genres LIKE '%Adventure%' AND startYear >= 2010 AND endYear <= 2020
AND (
  EXISTS (
    SELECT 1
    FROM title_ratings
    WHERE tconst = title_basics.tconst
    AND numVotes > 1000
    AND averageRating > 7
  )
  OR
  EXISTS (
    SELECT 1
    FROM title_principals
    WHERE nconst = title_basics.directors OR nconst = title_basics.writers
    AND category = 'director' OR category = 'writer'
    AND job LIKE '%Drive%' OR job LIKE '%Italian Job%'
  )
)
ORDER BY startYear DESC, averageRating DESC, numVotes DESC