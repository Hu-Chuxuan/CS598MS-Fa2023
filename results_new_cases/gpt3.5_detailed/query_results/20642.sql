SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' 
AND startYear > 2000 
AND primaryTitle != 'Click' 
AND primaryTitle NOT IN ('Black Panther', 'Iron Man 2')
ORDER BY averageRating DESC
LIMIT 5