SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE title_basics.titleType = 'movie' 
AND title_basics.genres LIKE '%Animation%' 
AND title_basics.primaryTitle != 'Cars 2' 
AND title_basics.startYear > 2011 
ORDER BY averageRating DESC 
LIMIT 5