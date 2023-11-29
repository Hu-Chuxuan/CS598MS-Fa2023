SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Action%' OR genres LIKE '%Adventure%' OR genres LIKE '%Sci-Fi%' 
AND startYear >= YEAR(DATE_SUB(CURDATE(), INTERVAL 1 YEAR))