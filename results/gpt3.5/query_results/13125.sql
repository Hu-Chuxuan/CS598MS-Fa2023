SELECT primaryTitle, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND genres LIKE '%Action%' 
AND primaryTitle NOT LIKE '%Batman%' 
AND primaryTitle NOT LIKE '%Superhero%' 
AND primaryTitle NOT LIKE '%Dark Knight%' 
AND primaryTitle != 'Deadpool' 
AND startYear > 2010 
ORDER BY averageRating DESC 
LIMIT 5