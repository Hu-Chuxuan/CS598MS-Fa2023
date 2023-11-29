SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n1 ON t1.primaryName = n1.primaryName
JOIN title_crew c ON t1.directors = c.directors
JOIN title_principals p ON t1.tconst = p.tconst
WHERE p.category = 'family'
AND t2.averageRating > 7
AND t1.startYear BETWEEN 2000 AND 2016
AND t1.runtimeMinutes BETWEEN 90 AND 120
AND NOT EXISTS (
  SELECT 1
  FROM title_basics t3
  JOIN title_ratings t4 ON t3.tconst = t4.tconst
  WHERE t3.primaryName = n1.primaryName
  AND t4.averageRating > 7
  AND t3.startYear BETWEEN 2000 AND 2016
  AND t3.runtimeMinutes BETWEEN 90 AND 120
)
ORDER BY t2.averageRating DESC, t1.startYear DESC