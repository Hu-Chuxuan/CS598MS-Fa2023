SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Comedy%' 
AND primaryTitle NOT IN ('Superbad', 'Super Troopers', 'Van Wilder', 'Dumb and Dumber') 
AND startYear >= 1990 
AND averageRating >= 7 
ORDER BY averageRating DESC 
LIMIT 10