SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Horror%' 
AND startYear >= 1990 
AND title_basics.tconst <> 'tt0117571' 
ORDER BY averageRating DESC
LIMIT 5