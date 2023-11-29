SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle = 'Jigsaw'
AND startYear = 2017
AND genres LIKE '%Horror%'
AND title_basics.tconst NOT IN ('tt0387564')
ORDER BY averageRating DESC
LIMIT 5