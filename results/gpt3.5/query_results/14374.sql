SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 1956
AND genres LIKE '%Musical%'
AND tconst NOT IN (
    SELECT tconst
    FROM title_basics
    WHERE primaryTitle = 'The King and I  (1956)'
)
ORDER BY averageRating DESC
LIMIT 5