SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
  FROM title_basics t
  JOIN name_basics n ON t.directors = n.nconst
  WHERE t.titleType ='movie' AND t.isAdult = 0 AND t.startYear = 2017
  UNION
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
  FROM title_basics t
  JOIN name_basics n ON t.writers = n.nconst
  WHERE t.titleType ='movie' AND t.isAdult = 0 AND t.startYear = 2017
) AS q
WHERE q.primaryTitle LIKE '%Justice League%'
ORDER BY q.averageRating DESC, q.numVotes DESC