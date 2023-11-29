SELECT t1.title, t1.averageRating, t1.numVotes, t2.title as "Similar Movie"
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n1 ON t1.primaryName = n1.primaryName
WHERE t1.genres LIKE '%thriller%'
AND t1.runtimeMinutes > 90
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings tr
  WHERE tr.tconst = t1.tconst AND tr.averageRating > t1.averageRating
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals tp
  WHERE tp.tconst = t1.tconst AND tp.category = 'actress'
)
AND t2.tconst NOT IN (
  SELECT t3.tconst
  FROM title_ratings t3
  WHERE t3.averageRating > t1.averageRating
)
AND t2.tconst NOT IN (
  SELECT t4.tconst
  FROM title_principals t4
  WHERE t4.category = 'actress'
)
AND t1.isAdult = 0
AND t1.startYear > 2010
AND t1.endYear < 2020
AND t2.title NOT IN (
  SELECT t5.title
  FROM title_basics t5
  WHERE t5.primaryName = n1.primaryName
)
ORDER BY t1.averageRating DESC, t1.numVotes DESC
LIMIT 5