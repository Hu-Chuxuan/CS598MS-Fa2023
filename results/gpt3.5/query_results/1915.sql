SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' AND startYear >= 2000
AND tconst NOT IN ('tt0243607', 'tt0457400', 'tt0151804', 'tt0765443')
ORDER BY averageRating DESC
LIMIT 5