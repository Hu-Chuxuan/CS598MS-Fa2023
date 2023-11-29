SELECT tconst, primaryTitle, runtimeMinutes, genres
FROM title_basics
WHERE isAdult = 0 AND (
  runtimeMinutes <= 120 AND 
  genres LIKE '%Animation%' OR 
  genres LIKE '%Comedy%' OR 
  genres LIKE '%Family%'
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5