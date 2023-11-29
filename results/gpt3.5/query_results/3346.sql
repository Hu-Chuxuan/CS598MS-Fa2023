SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 2017
AND genres LIKE '%Adventure%'
AND tconst NOT IN ('tt0093779', 'tt1449283', 'tt2283336', 'tt0058331')
ORDER BY averageRating DESC
LIMIT 1