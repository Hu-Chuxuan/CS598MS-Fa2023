SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND isAdult = 0 
AND startYear >= YEAR(CURDATE()) - 1 
ORDER BY averageRating DESC 
LIMIT 10