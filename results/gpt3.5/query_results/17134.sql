SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Action%' 
AND startYear > 2000 
AND startYear < 2010 
AND primaryTitle != 'Terminator Salvation' 
ORDER BY averageRating DESC 
LIMIT 5