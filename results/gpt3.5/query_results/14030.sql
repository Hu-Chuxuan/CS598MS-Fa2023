SELECT primaryTitle 
FROM title_basics 
WHERE startYear >= 2010 
AND isAdult = 0 
AND genres LIKE '%Animation%' 
AND genres LIKE '%Family%' 
AND runtimeMinutes <= 120 
AND tconst != 'tt0110357' -- excluding The Lion King (1994)
ORDER BY averageRating DESC 
LIMIT 1