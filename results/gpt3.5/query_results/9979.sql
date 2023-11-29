SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND startYear <= 2008 
AND genres LIKE '%Comedy%' 
AND genres LIKE '%Musical%' 
AND primaryTitle NOT IN ('Mamma Mia!  (2008)') 
ORDER BY averageRating DESC 
LIMIT 5