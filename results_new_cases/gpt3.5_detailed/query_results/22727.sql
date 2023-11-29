SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Comedy%' 
AND primaryTitle NOT IN ('Seven  (1995)', 'Snatch  (2000)', 'Fight Club (1999)') 
ORDER BY averageRating DESC 
LIMIT 5