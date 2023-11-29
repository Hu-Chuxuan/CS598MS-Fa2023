SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%' 
AND startYear >= 2010 
AND startYear <= 2015 
AND title_basics.tconst NOT IN ('tt0137523', 'tt1345836', 'tt0443706')
ORDER BY averageRating DESC
LIMIT 5