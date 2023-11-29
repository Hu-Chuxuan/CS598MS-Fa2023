SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Drama%'
AND startYear < 1994
AND startYear > 1920
AND tconst NOT IN ('tt0111976', 'tt1568913', 'tt0115898')
ORDER BY averageRating DESC
LIMIT 5