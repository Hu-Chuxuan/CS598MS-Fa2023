SELECT t1.title, t1.titleType, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Comedy' AND t2.averageRating > 7 AND t2.numVotes > 1000
AND NOT EXISTS (
  SELECT 1
  FROM title_principals t3
  WHERE t3.tconst = t1.tconst AND t3.category = 'Adult'
)
AND EXISTS (
  SELECT 1
  FROM title_crew c
  JOIN name_basics n ON c.directors = n.nconst
  WHERE n.primaryProfession = 'Actor' AND n.knownForTitles = 'Superbad (2007)'
)
ORDER BY t2.averageRating DESC