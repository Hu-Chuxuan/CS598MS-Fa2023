SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%' AND genres LIKE '%Thriller%'
AND startYear > 2000
AND tconst NOT IN ('tt0289043', 'tt0120815', 'tt0075986')
ORDER BY averageRating DESC
LIMIT 5