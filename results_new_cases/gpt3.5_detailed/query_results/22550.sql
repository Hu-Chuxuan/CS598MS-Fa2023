SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND isAdult = 0 
AND startYear >= 2010 
AND genres LIKE '%Animation%' 
AND tconst NOT IN ('tt0382932', 'tt0317705', 'tt2277860') 
ORDER BY averageRating DESC
LIMIT 5