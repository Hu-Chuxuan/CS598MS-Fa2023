SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%'
AND startYear < 1990
AND tconst NOT IN ('tt0099864', 'tt5065822', 'tt2620590')
ORDER BY averageRating DESC
LIMIT 5