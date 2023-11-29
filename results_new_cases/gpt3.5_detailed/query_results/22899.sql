SELECT primaryTitle, startYear, runtimeMinutes, genres
FROM title_basics
WHERE titleType = 'movie'
AND startYear >= 1980
AND genres LIKE '%Drama%'
AND tconst NOT IN ('tt0080474', 'tt0477348') 
ORDER BY averageRating DESC
LIMIT 5