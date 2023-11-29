SELECT primaryTitle, averageRating, genres
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie' 
AND startYear >= 2000 
AND genres LIKE '%Adventure%' 
AND tconst NOT IN ('tt4881806', 'tt0317705', 'tt1049413') 
ORDER BY averageRating DESC
LIMIT 10