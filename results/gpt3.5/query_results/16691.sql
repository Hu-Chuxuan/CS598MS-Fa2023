SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Comedy%' 
AND (primaryTitle != 'Home Alone (1990)' OR primaryTitle != 'Home Alone 2: Lost in New York (1992)') 
AND (primaryTitle LIKE '%Christmas%' OR primaryTitle LIKE '%Holiday%')
ORDER BY averageRating DESC 
LIMIT 5