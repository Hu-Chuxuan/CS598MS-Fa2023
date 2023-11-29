SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND startYear <= 2022 
AND genres LIKE '%Animation%' 
AND tconst NOT IN ('tt0317705', 'tt0266543') 
ORDER BY numVotes DESC 
LIMIT 5