SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Comedy%' 
AND startYear <= 2022 
AND primaryTitle NOT IN ('30 Minutes or Less (2011)', 'Shaun of the Dead (2004)', 'Zombieland (2009)') 
ORDER BY averageRating DESC 
LIMIT 10