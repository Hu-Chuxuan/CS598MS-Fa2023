SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
WHERE isAdult = 0 AND (
  (genres LIKE '%Comedy%' AND genres LIKE '%Adventure%')
  OR (genres LIKE '%Comedy%' AND startYear BETWEEN 1990 AND 2000)
  OR (genres LIKE '%Adventure%' AND startYear BETWEEN 1990 AND 2000)
)
AND (
  (directors LIKE '%James%') OR (directors LIKE '%Adam%')
  OR (writers LIKE '%Andre%') OR (writers LIKE '%Gary%')
)
AND (
  (characters LIKE '%Animals%') OR (characters LIKE '%Detectives%')
  OR (characters LIKE '%Teenagers%'])
ORDER BY startYear DESC, runtimeMinutes DESC