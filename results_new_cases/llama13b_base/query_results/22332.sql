SELECT t1.title, t1.originalTitle, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.startYear = 1987 AND t1.genres LIKE '%comedy%' AND t2.averageRating > 7
AND NOT EXISTS (
  SELECT 1
  FROM title_principals t3
  JOIN name_basics t4 ON t3.nconst = t4.nconst
  WHERE t3.category = 'Director' AND t4.birthYear = 1948
)
ORDER BY t2.averageRating DESC, t1.startYear ASC