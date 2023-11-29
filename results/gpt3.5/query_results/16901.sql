SELECT primaryTitle 
FROM title_basics 
WHERE titleType = 'movie' 
AND isAdult = 0 
AND genres LIKE '%Family%' 
AND genres LIKE '%Fantasy%' 
AND startYear <= 2022 
AND endYear >= 2022 
AND runtimeMinutes <= 180 
AND tconst NOT IN ('tt0407304', 'tt1731141') 
ORDER BY averageRating DESC 
LIMIT 1