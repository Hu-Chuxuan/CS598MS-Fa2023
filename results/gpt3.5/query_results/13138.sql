SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE (primaryTitle != 'The Mask' OR startYear != 1988) 
AND (primaryTitle != 'Click' OR startYear != 2006) 
AND (genres LIKE '%Comedy%' OR genres LIKE '%Family%') 
AND titleType = 'movie' 
AND startYear > 1980 
ORDER BY averageRating DESC 
LIMIT 5