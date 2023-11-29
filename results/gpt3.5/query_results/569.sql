SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Sci-Fi%' 
AND primaryTitle != 'Avatar' 
ORDER BY averageRating DESC 
LIMIT 5