SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Family%' 
AND startYear > 2000 
AND averageRating > 7 
AND primaryTitle NOT IN ('What About Bob%3F (1991)', 'Lars and the Real Girl (2007)', 'Stripes  (1981)', 'The Man Who Knew Too Much  (1956)')  
ORDER BY averageRating DESC 
LIMIT 5