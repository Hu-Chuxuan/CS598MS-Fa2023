SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Science Fiction' AND t1.startYear = 1999
AND EXISTS (
  SELECT 1
  FROM title_basics t3
  JOIN title_principals t4 ON t3.tconst = t4.tconst
  WHERE t3.category = 'Actors' AND t4.job = 'Director' AND t4.nconst = 'The Wachowskis'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings t5
  WHERE t5.tconst = t1.tconst AND t5.averageRating < 5
)
AND NOT EXISTS (
  SELECT 1
  FROM title_basics t6
  JOIN title_ratings t7 ON t6.tconst = t7.tconst
  WHERE t6.primaryName = 'Arnold Schwarzenegger' AND t7.averageRating < 5
)
AND EXISTS (
  SELECT 1
  FROM title_basics t8
  JOIN title_ratings t9 ON t8.tconst = t9.tconst
  WHERE t8.primaryName = 'Jennifer Lopez' AND t9.averageRating > 5
)
ORDER BY t1.startYear DESC, t2.averageRating DESC