SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' 
AND startYear <= 1979 
AND startYear > 1970
AND primaryTitle != 'Meatballs'
ORDER BY averageRating DESC
LIMIT 5