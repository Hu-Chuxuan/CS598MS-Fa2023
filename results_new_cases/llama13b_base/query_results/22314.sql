SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Horror' AND t2.averageRating > 6
AND NOT EXISTS (
  SELECT 1
  FROM title_principals t3
  JOIN name_basics t4 ON t3.nconst = t4.nconst
  WHERE t3.category = 'Actor' AND t4.birthYear = 1980
)
ORDER BY t2.averageRating DESC