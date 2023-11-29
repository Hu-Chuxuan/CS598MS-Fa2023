SELECT primaryTitle, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Drama%' 
AND startYear > 2010 
AND averageRating > 7 
AND primaryTitle NOT IN ('Die Hard (1988)', 'Deadpool  (2016)', 'The Terminator (1984)') 
ORDER BY averageRating DESC 
LIMIT 5