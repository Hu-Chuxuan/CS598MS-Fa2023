SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%' OR genres LIKE '%Sci-Fi%' OR genres LIKE '%Comedy%'
AND startYear > 1964
AND startYear < 1999
AND title_basics.tconst NOT IN ('tt0133093', 'tt0057012')
ORDER BY averageRating DESC
LIMIT 5