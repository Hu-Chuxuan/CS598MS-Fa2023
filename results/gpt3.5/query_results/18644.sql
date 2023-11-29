SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE primaryTitle NOT LIKE '%Jumanji%' 
AND primaryTitle NOT LIKE '%Super Troopers%' 
AND primaryTitle NOT LIKE '%Shaun of the Dead%' 
AND primaryTitle NOT LIKE '%Grown Ups%' 
AND genres LIKE '%Comedy%' 
AND startYear >= 2010 
AND averageRating >= 6 
ORDER BY averageRating DESC 
LIMIT 5