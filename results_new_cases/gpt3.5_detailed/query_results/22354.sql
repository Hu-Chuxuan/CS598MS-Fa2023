SELECT primaryTitle, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Comedy%' 
AND title_basics.primaryTitle NOT IN ('It (1990)', 'The Cabin in the Woods', 'It  (2017)') 
ORDER BY averageRating DESC 
LIMIT 5