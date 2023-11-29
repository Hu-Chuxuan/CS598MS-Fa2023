SELECT t1.title, t1.titleType, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%mystery' AND t2.averageRating > 8
AND NOT EXISTS (
  SELECT 1
  FROM title_principals t3
  JOIN name_basics t4 ON t3.nconst = t4.nconst
  WHERE t3.job = 'director' AND t4.birthYear = 1968
)
AND NOT EXISTS (
  SELECT 1
  FROM title_crew t5
  JOIN title_basics t6 ON t5.tconst = t6.tconst
  WHERE t5.job = 'writer' AND t6.primaryTitle = 'The Silence of the Lambs'
)
ORDER BY t2.averageRating DESC