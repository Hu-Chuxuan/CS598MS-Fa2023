SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Thriller%' 
AND startYear >= 2016 
AND primaryTitle != 'Nocturnal Animals'
ORDER BY averageRating DESC
LIMIT 5