SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%'
AND genres LIKE '%Comedy%'
AND startYear <= YEAR(DATE_ADD(NOW(), INTERVAL 1 DAY))
AND title_basics.tconst NOT IN ('tt1524930', 'tt2582782') 
ORDER BY averageRating DESC
LIMIT 5