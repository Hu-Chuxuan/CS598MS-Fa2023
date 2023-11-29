SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND startYear > 2009 
AND genres LIKE '%Action%' 
AND genres LIKE '%Thriller%' 
AND tconst NOT IN ('tt0238380', 'tt4425200', 'tt1013752') 
ORDER BY averageRating DESC 
LIMIT 5