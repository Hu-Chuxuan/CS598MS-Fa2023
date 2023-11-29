SELECT t1.title, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%Comedy%' AND t2.averageRating > 6
AND EXISTS (
  SELECT 1
  FROM name_basics n
  JOIN title_crew c ON n.primaryName = c.directors
  WHERE c.directors = 'Adam Sandler'
)
ORDER BY t2.averageRating DESC, t1.runtimeMinutes ASC