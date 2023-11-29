SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Comedy' AND t2.averageRating > 6 AND t2.numVotes > 1000
AND NOT EXISTS (
  SELECT 1
  FROM title_basics t3
  JOIN title_principals t4 ON t3.tconst = t4.tconst
  WHERE t3.primaryName IN ('Melissa McCarthy', 'Jamie Dornan')
)
ORDER BY t2.averageRating DESC