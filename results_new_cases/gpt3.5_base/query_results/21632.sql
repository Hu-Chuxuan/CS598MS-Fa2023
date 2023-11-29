SELECT primaryTitle, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Action%' OR genres LIKE '%Adventure%' 
ORDER BY averageRating DESC 
LIMIT 10