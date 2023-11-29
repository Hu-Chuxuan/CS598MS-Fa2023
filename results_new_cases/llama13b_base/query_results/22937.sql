SELECT t1.title, t1.imdbId, t1.averageRating, t1.numVotes, t2.title as "Similar Title"
FROM title_basics t1
JOIN (
  SELECT t2.title, t2.imdbId, t2.averageRating, t2.numVotes
  FROM title_basics t2
  WHERE t2.genres LIKE '%Action%' AND t2.genres LIKE '%War%'
) t2 ON t1.imdbId = t2.imdbId
WHERE t1.genres LIKE '%Action%' AND t1.genres LIKE '%War%'
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings tr
  WHERE tr.title = t1.title AND tr.user_id = <user_id>
)
ORDER BY t1.averageRating DESC, t1.numVotes DESC