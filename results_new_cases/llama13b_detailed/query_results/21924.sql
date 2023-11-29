SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
    FROM title_basics t
    JOIN name_basics n ON t.directors = n.nconst
   WHERE t.primaryTitle LIKE '%Detective'
     OR t.originalTitle LIKE '%Detective'
     OR t.titleType LIKE '%Animation'
     OR t.genres LIKE '%Comedy'
     OR t.genres LIKE '%Adventure'
  ) AS q1
  JOIN (
    SELECT n.nconst, n.primaryName, n.knownForTitles
     FROM name_basics n
     WHERE n.primaryProfession LIKE '%Actor'
       AND n.knownForTitles LIKE '%Superbad%'
  ) AS q2 ON q1.nconst = q2.nconst
  JOIN (
    SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres
     FROM title_basics t
     WHERE t.titleType LIKE '%Movie'
       AND t.primaryTitle LIKE '%Super%'
       AND t.genres LIKE '%Comedy'
  ) AS q3 ON q1.tconst = q3.tconst
  WHERE q2.knownForTitles NOT NULL
  ORDER BY q1.runtimeMinutes DESC, q2.primaryName ASC