SELECT t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.isAdult, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_basics.tconst = t2.tconst
WHERE t1.genres = 'Comedy' AND t2.averageRating > 7 AND t2.numVotes > 10000
AND (t1.title_basics.title LIKE '%Game%' OR t1.title_basics.title LIKE '%Night%')
AND NOT EXISTS (
  SELECT 1
  FROM title_basics t3
  JOIN title_principals t4 ON t3.tconst = t4.tconst
  WHERE t3.title_basics.title = t1.title_basics.title AND t4.category = 'Fantasy'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_basics t5
  JOIN title_crew t6 ON t5.tconst = t6.tconst
  WHERE t5.title_basics.title = t1.title_basics.title AND t6.directors = 'Chris McKay'
)
ORDER BY t2.averageRating DESC, t1.title_basics.title ASC