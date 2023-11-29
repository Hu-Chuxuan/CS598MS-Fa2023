SELECT primaryTitle, startYear, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE title_basics.titleType = 'movie' 
AND title_basics.startYear <= 2008 
AND title_basics.startYear >= 1987 
AND title_basics.genres LIKE '%Action%' 
AND title_basics.genres LIKE '%Adventure%' 
AND title_basics.tconst NOT IN ('tt0120179','tt0096754','tt0107290','tt0093870','tt0364845','tt0114898') 
ORDER BY averageRating DESC 
LIMIT 1