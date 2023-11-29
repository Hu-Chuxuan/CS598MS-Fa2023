SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating 
FROM title_basics 
JOIN title_ratings 
ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND startYear <= 2008 
AND genres LIKE '%Drama%' 
AND tconst NOT IN ('tt0942385', 'tt0097757', 'tt1663202', 'tt0472043')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5