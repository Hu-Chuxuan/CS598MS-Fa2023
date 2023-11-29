SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Musical%' AND genres LIKE '%Biography%' AND genres NOT LIKE '%Adult%' 
AND startYear >= 2000 
ORDER BY averageRating DESC 
LIMIT 5