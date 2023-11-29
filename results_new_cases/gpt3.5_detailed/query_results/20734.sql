SELECT primaryTitle, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Comedy%' 
AND primaryTitle != 'I Now Pronounce You Chuck & Larry (2007)' 
ORDER BY averageRating DESC