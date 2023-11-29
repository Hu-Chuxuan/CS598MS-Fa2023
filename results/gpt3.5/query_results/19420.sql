SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear = 2017
AND primaryTitle LIKE '%Despicable Me 3%'
AND genres LIKE '%Animation%'
AND averageRating >= 7
AND tconst NOT IN (
    SELECT tconst
    FROM title_basics
    WHERE primaryTitle IN ('Willy Wonka & the Chocolate Factory', 'Shrek')
)
ORDER BY averageRating DESC
LIMIT 5