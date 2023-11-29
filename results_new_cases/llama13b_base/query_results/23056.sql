SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       AVG(r.averageRating) AS avgRating, COUNT(r.tconst) AS numVotes
  FROM title_basics t
  JOIN title_ratings r ON t.tconst = r.tconst
  WHERE t.titleType = 'Movie'
  AND r.numVotes > 100
  GROUP BY t.tconst
) AS movies
WHERE NOT EXISTS (
  SELECT 1 FROM name_basics n
  JOIN title_principals tp ON n.nconst = tp.nconst
  WHERE tp.category = 'Actor' AND n.primaryProfession = 'Director'
  AND n.birthYear = 1968
  AND n.deathYear = 2017
)
ORDER BY avgRating DESC, numVotes DESC