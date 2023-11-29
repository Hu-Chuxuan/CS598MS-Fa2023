SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE primaryTitle IN ('Anchorman', 'The House') 
AND startYear = 2017 
ORDER BY averageRating DESC