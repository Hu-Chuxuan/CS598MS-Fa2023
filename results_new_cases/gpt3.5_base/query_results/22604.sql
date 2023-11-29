SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND genres LIKE '%Action%' 
AND primaryTitle NOT IN ('Contact', 'Close Encounters of the Third Kind', 'The Martian', 'Cocoon', 'The Abyss') 
ORDER BY averageRating DESC 
LIMIT 5