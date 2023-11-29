SELECT primaryTitle, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Romantic%' AND genres LIKE '%Comedy%' 
AND primaryTitle NOT IN ('Step Brothers', 'Talladega Nights: The Ballad of Ricky Bobby')
ORDER BY averageRating DESC
LIMIT 10