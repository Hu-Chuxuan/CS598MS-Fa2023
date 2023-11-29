SELECT primaryTitle, startYear, runtimeMinutes, genres
FROM title_basics
WHERE tconst IN ('tt1632708', 'tt1980929', 'tt0093779', 'tt0829482')
AND titleType = 'movie'
AND isAdult = 0
AND startYear >= 2010
AND genres LIKE '%Comedy%'
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10