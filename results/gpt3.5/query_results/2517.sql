SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND (originalTitle = 'High Crimes' OR primaryTitle = 'High Crimes') 
AND startYear = 2002 
AND genres LIKE '%Thriller%' 
ORDER BY averageRating DESC