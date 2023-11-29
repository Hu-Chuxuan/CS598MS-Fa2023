SELECT primaryTitle, averageRating, genres 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%action%' OR genres LIKE '%comedy%' OR genres LIKE '%click flicks' 
ORDER BY averageRating DESC 
LIMIT 10