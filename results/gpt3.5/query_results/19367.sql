SELECT primaryTitle, startYear, runtimeMinutes, genres
FROM title_basics
WHERE titleType = 'movie'
AND startYear >= 1990
AND genres LIKE '%Action%'
AND genres LIKE '%Adventure%'
AND tconst NOT IN (
    SELECT tconst 
    FROM title_basics 
    WHERE primaryTitle = 'Seeking a Friend for the End of the World'
    AND startYear = 2012
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5