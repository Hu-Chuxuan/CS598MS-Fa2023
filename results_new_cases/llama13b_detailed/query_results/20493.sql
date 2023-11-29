SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
WHERE titleType IN ('movie','short', 'tvseries') AND
      (isAdult = 0 OR isAdult IS NULL) AND
      startYear >= 2000 AND
      endYear <= 2020 AND
      runtimeMinutes > 60 AND
      genres LIKE '%drama%' OR genres LIKE '%true_life_event%'
ORDER BY startYear DESC, runtimeMinutes DESC, numVotes DESC