SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%thriller%' AND t1.startYear = 2014
AND EXISTS (
  SELECT 1
  FROM title_basics t3
  JOIN title_ratings t4 ON t3.tconst = t4.tconst
  WHERE t3.primaryTitle LIKE '%serial killer%' AND t4.averageRating > 7
)
ORDER BY t2.averageRating DESC, t1.startYear DESC