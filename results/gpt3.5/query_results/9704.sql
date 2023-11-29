SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Drama%' OR genres LIKE '%Action%'
AND startYear > 1980
AND tconst NOT IN ('tt0086425', 'tt0103064', 'tt0096895')
ORDER BY averageRating DESC
LIMIT 10