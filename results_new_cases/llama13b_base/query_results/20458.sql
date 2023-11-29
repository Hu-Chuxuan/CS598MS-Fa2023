SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN (
  SELECT n1.primaryName, COUNT(n2.tconst) as num_movies
  FROM name_basics n1
  JOIN title_basics t2 ON n1.primaryName = t2.primaryName
  GROUP BY n1.primaryName
  HAVING COUNT(n2.tconst) > 2
) n3 ON t1.primaryName = n3.primaryName
WHERE t1.genres LIKE '%comedy%' AND t1.startYear >= 2000 AND t1.startYear <= 2020
AND t2.averageRating > 7 AND t2.numVotes > 1000
ORDER BY t2.averageRating DESC, t1.startYear DESC