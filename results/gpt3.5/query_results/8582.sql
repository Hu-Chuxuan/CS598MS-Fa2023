SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Family%' 
AND (genres LIKE '%Holiday%' OR primaryTitle LIKE '%Holiday%') 
AND startYear <= 2022 
AND startYear >= 1980 
AND tconst NOT IN ('tt0087363', 'tt0099785') 
ORDER BY averageRating DESC 
LIMIT 5