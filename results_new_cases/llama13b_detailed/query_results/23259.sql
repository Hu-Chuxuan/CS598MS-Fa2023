SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
  FROM title_basics t
  JOIN name_basics n ON t.directors = n.nconst OR t.writers = n.nconst
  WHERE t.primaryTitle LIKE '%The Purge%' AND t.isAdult = 0
  AND n.primaryName IN (SELECT name FROM name_basics WHERE knownForTitles LIKE '%Seven (1995)%')
  AND n.primaryName IN (SELECT name FROM name_basics WHERE knownForTitles LIKE '%It (2017)%')
  AND n.primaryName IN (SELECT name FROM name_basics WHERE knownForTitles LIKE '%Jigsaw (2017)%')
) AS recommendedMovies
WHERE runtimeMinutes < 120