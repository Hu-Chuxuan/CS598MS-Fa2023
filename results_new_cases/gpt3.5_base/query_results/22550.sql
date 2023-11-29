SELECT primaryTitle, startYear, runtimeMinutes, genres
FROM title_basics
WHERE titleType = 'movie' 
AND isAdult = 0
AND startYear >= 2010
AND genres LIKE '%Animation%'
AND primaryTitle NOT IN ('Up', 'The Incredibles', 'Finding Dory')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5