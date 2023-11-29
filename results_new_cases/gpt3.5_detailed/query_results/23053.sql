SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%War%' 
AND title_basics.titleType = 'movie' 
AND primaryTitle NOT IN ('Black Hawk Down  (2002)', 'Fight Club (1999)') 
ORDER BY averageRating DESC 
LIMIT 5