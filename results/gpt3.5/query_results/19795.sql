SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE title_basics.titleType = 'movie' 
AND startYear < 1996 
AND genres LIKE '%Horror%' 
AND tconst NOT IN ('tt0117571', 'tt0343660', 'tt0087262') 
ORDER BY averageRating DESC 
LIMIT 5