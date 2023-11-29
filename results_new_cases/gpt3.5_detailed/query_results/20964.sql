SELECT primaryTitle, startYear, runtimeMinutes, genres
FROM title_basics
WHERE (primaryTitle = 'Deadpool' AND startYear = 2016) OR (primaryTitle = 'Deadpool 2' AND startYear = 2018)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5