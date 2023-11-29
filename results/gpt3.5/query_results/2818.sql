SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND startYear >= 2000 
AND genres LIKE '%Documentary%' 
AND runtimeMinutes > 60 
AND primaryTitle != 'Waiting for Armageddon' 
ORDER BY averageRating DESC 
LIMIT 5