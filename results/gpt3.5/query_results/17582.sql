SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (primaryTitle LIKE '%Zathura%' OR primaryTitle LIKE '%Indian in the Cupboard%')
AND (startYear = 2005 OR startYear = 1995)
ORDER BY averageRating DESC
LIMIT 5