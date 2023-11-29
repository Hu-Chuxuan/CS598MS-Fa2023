SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Drama%' AND startYear >= 1990
AND title_basics.tconst NOT IN ('tt0111161', 'tt0118842')
ORDER BY averageRating DESC
LIMIT 5