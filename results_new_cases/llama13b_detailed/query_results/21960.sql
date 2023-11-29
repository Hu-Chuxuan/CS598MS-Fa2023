SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear = 1998 AND endYear = 1998 AND runtimeMinutes > 120 AND genres LIKE '%War%'
AND (
  SELECT AVG(rating)
  FROM title_ratings
  WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Saving Private Ryan')
) > (
  SELECT AVG(rating)
  FROM title_ratings
  WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle NOT IN ('Saving Private Ryan'))
)
AND name_basics.primaryName NOT IN (SELECT primaryName FROM name_basics WHERE knownForTitles = 'Saving Private Ryan')
AND name_basics.knownForTitles NOT LIKE '%Saving Private Ryan%'
AND name_basics.birthYear > 1950 AND name_basics.deathYear < 2000
AND name_basics.primaryProfession NOT LIKE '%Actor%'
AND name_basics.knownForTitles NOT LIKE '%Saving Private Ryan%'
LIMIT 10
