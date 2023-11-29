SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n1 ON t1.primaryName = n1.primaryName
JOIN title_crew t3 ON t1.directors = t3.directors
JOIN title_principals t4 ON t1.ordering = t4.ordering
WHERE t1.genres = 'Drama' AND t2.averageRating > 7 AND t3.job = 'Director' AND t4.category = 'Actor'
AND t1.startYear BETWEEN 1999 AND 2004
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings tr
  WHERE tr.tconst = t1.tconst AND tr.numVotes > 1000
)
AND NOT EXISTS (
  SELECT 1
  FROM title_basics t5
  WHERE t5.tconst = t1.tconst AND t5.primaryName = 'Blake Lively'
)
LIMIT 5

