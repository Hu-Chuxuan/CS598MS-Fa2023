SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Comedy%' 
AND (primaryTitle <> 'American Pie' OR startYear <> 1999) 
AND (primaryTitle <> 'Scary Movie' OR startYear <> 2000) 
ORDER BY averageRating DESC 
LIMIT 10