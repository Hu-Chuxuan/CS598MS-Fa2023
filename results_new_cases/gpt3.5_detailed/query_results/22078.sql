SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1990
AND genres LIKE '%Crime%'
AND averageRating >= 7
AND tconst NOT IN ('tt0081505', 'tt0066921', 'tt0100157')
ORDER BY averageRating DESC
LIMIT 5