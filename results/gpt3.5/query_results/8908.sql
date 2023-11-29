SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE startYear >= 1990 
AND startYear <= 1995 
AND titleType = 'movie' 
AND averageRating >= 7 
AND (genres LIKE '%Adventure%' OR genres LIKE '%Family%') 
AND primaryTitle NOT IN ('Hook', 'Jumanji')
ORDER BY averageRating DESC
LIMIT 5