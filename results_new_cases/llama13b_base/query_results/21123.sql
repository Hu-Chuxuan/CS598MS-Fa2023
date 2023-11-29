SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Action' AND t1.startYear = 2018
AND EXISTS (
  SELECT 1
  FROM name_basics n
  JOIN title_principals tp ON n.nconst = tp.nconst
  WHERE n.primaryProfession = 'Actor' AND tp.category = 'Acting' AND tp.job = 'Starring'
  AND EXISTS (
    SELECT 1
    FROM title_crew c
    WHERE c.directors = 'The Russo Brothers'
  )
)
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings tr
  WHERE tr.tconst = t1.tconst AND tr.averageRating < 5
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals tp2
  WHERE tp2.nconst = t1.nconst AND tp2.category = 'Acting' AND tp2.job = 'Starring'
  AND EXISTS (
    SELECT 1
    FROM title_basics t3
    WHERE t3.tconst = tp2.tconst AND t3.genres = 'Superhero'
  )
)
ORDER BY t2.averageRating DESC, t1.startYear DESC