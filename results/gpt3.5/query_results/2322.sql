SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND isAdult = 0 
AND genres LIKE '%Family%' 
AND startYear >= 2010 
AND tconst NOT IN ('tt1499658', 'tt4383594') 
ORDER BY averageRating DESC 
LIMIT 5