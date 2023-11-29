SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' 
AND startYear > 2016 
AND primaryTitle != 'Central Intelligence'
ORDER BY averageRating DESC
LIMIT 5