SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE title_basics.genres LIKE '%Comedy%' 
AND title_basics.startYear >= 2010 
AND title_basics.tconst NOT IN ('tt1905041', 'tt1430132', 'tt1860353', 'tt1431045')
ORDER BY averageRating DESC 
LIMIT 10