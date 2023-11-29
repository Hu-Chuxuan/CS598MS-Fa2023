SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Drama%' 
AND startYear >= 2010 
AND startYear <= 2017 
AND titleType = 'movie' 
AND primaryTitle NOT IN ('I, Tonya (2017)') 
ORDER BY averageRating DESC 
LIMIT 5