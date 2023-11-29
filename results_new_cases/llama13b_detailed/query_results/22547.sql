SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, category, job, characters
FROM title_basics
WHERE
  (
    (genres LIKE '%Animation%' AND startYear >= 1990 AND endYear <= 2018)
    OR
    (genres LIKE '%Adventure%' AND startYear >= 1990 AND endYear <= 2018)
    OR
    (genres LIKE '%Comedy%' AND startYear >= 1990 AND endYear <= 2018)
    OR
    (genres LIKE '%Family%' AND startYear >= 1990 AND endYear <= 2018)
    OR
    (genres LIKE '%Fantasy%' AND startYear >= 1990 AND endYear <= 2018)
    OR
    (genres LIKE '%Musical%' AND startYear >= 1990 AND endYear <= 2018)
  )
  AND (numVotes > 1000)
  AND (averageRating > 6)
ORDER BY averageRating DESC