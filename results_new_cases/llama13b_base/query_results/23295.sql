SELECT t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_basics.tconst = t2.tconst
WHERE t1.genres LIKE '%Action%' AND t1.startYear = 2013
AND EXISTS (
  SELECT 1
  FROM title_basics t3
  JOIN title_ratings t4 ON t3.title_basics.tconst = t4.tconst
  WHERE t3.primaryTitle = 'The Purge' AND t4.averageRating > 7
)
AND NOT EXISTS (
  SELECT 1
  FROM title_basics t5
  JOIN title_ratings t6 ON t5.title_basics.tconst = t6.tconst
  WHERE t5.primaryTitle IN ('Fight Club', 'Pitch Perfect') AND t6.averageRating < 7
)
GROUP BY t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres
ORDER BY t2.averageRating DESC