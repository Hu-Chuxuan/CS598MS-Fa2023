SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Action%' AND genres LIKE '%War%' 
ORDER BY averageRating DESC 
LIMIT 10