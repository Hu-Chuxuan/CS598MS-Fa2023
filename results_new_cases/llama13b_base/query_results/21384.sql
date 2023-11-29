SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.primaryTitle = 'Deadpool 2' AND t2.averageRating > 7
AND NOT EXISTS (
  SELECT 1
  FROM title_basics t3
  JOIN title_principals t4 ON t3.tconst = t4.tconst
  WHERE t4.category = 'actor' AND t3.primaryName IN (SELECT n1.primaryName FROM name_basics n1 WHERE n1.birthYear = 1970 AND n1.deathYear IS NULL)
)
ORDER BY t2.averageRating DESC, t1.startYear DESC