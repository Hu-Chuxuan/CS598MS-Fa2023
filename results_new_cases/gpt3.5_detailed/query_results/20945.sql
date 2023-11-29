SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%' AND genres LIKE '%Comedy%' 
AND startYear <= 2002 
ORDER BY averageRating DESC
LIMIT 10