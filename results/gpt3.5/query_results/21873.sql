SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Animation%' 
AND startYear > 2010 
AND averageRating > 7 
AND title_basics.tconst NOT IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Moana  (2016)')
ORDER BY averageRating DESC
LIMIT 5