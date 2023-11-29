SELECT t1.title, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%comedy%' AND t1.startYear BETWEEN 1990 AND 2009
AND (
  EXISTS (
    SELECT 1
    FROM title_basics t3
    WHERE t3.tconst = t1.tconst AND t3.primaryTitle LIKE '%Ace Ventura%'
  )
  OR EXISTS (
    SELECT 1
    FROM title_basics t3
    WHERE t3.tconst = t1.tconst AND t3.primaryTitle LIKE '%Superbad%'
  )
)
AND t2.averageRating > 6 AND t2.numVotes > 10000
ORDER BY t2.averageRating DESC, t1.startYear DESC