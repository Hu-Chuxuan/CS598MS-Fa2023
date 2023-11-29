SELECT tb.primaryTitle
FROM title_basics tb
WHERE (
    FIND_IN_SET('Action', tb.genres) > 0
    OR FIND_IN_SET('Adventure', tb.genres) > 0
    OR FIND_IN_SET('Sci-Fi', tb.genres) > 0
)
AND startYear > 2010
AND startYear < 2020
AND tb.tconst NOT IN (
    SELECT tp.tconst
    FROM title_principals tp
    JOIN name_basics nb ON tp.nconst = nb.nconst
    WHERE FIND_IN_SET('Comedy', nb.primaryProfession) > 0
)
AND tb.tconst NOT IN (
    SELECT tr.tconst
    FROM title_ratings tr
    WHERE numVotes < 50000
)