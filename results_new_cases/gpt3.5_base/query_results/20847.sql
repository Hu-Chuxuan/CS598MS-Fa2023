SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Animation%' 
AND startYear >= 2009 
AND averageRating >= 8 
AND title_basics.tconst NOT IN ('tt1049413', 'tt0848228')
ORDER BY averageRating DESC
LIMIT 5