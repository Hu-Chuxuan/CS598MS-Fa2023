SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Thriller%' AND genres LIKE '%Action%'
AND startYear > 2001
AND startYear < 2022
AND title_basics.tconst NOT IN ('tt0139654', 'tt4154756')
ORDER BY averageRating DESC
LIMIT 5