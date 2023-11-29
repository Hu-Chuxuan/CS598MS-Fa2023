SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 1994
AND genres LIKE '%Drama%'
AND tconst NOT IN (
    SELECT tconst
    FROM title_basics
    WHERE primaryTitle LIKE '%Rocky%'
)
AND primaryTitle != 'The Shawshank Redemption'
ORDER BY averageRating DESC
LIMIT 5