SELECT t.title, t.tconst, t.primaryTitle, t.originalTitle, t.genres, t.runtimeMinutes, t.startYear, t.endYear, t.isAdult, 
       r.averageRating, r.numVotes
FROM title_basics t
JOIN title_ratings r ON t.tconst = r.tconst
WHERE t.genres = 'Comedy' AND t.startYear = 2010
AND EXISTS (
  SELECT 1 
  FROM title_crew c
  JOIN name_basics n ON c.directors = n.nconst
  WHERE n.primaryProfession = 'actor' AND n.knownForTitles = 'tt0053137'
)
AND NOT EXISTS (
  SELECT 1 
  FROM title_principals p
  WHERE p.category = 'actor' AND p.job = 'Blacksmith'
)
ORDER BY r.averageRating DESC, r.numVotes DESC