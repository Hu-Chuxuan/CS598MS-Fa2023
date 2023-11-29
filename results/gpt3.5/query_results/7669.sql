SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Horror%' 
AND startYear = 2017 
AND (primaryTitle != 'Mother!' OR primaryTitle != 'Get Out') 
ORDER BY averageRating DESC