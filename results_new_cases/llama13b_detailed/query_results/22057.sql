SELECT * FROM title_basics
WHERE titleType ='movie' AND genres LIKE '%Comedy%'
AND (
    SELECT AVG(averageRating)
    FROM title_ratings
    WHERE title_id = tconst
) > (
    SELECT AVG(averageRating)
    FROM title_ratings
    WHERE title_id = tconst
) - 0.5

ORDER BY averageRating DESC