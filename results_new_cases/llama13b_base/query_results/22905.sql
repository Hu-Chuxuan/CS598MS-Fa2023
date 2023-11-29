SELECT 
    t1.title_basics.title,
    t1.title_basics.primaryTitle,
    t1.title_basics.originalTitle,
    t1.title_basics.startYear,
    t1.title_basics.endYear,
    t1.title_basics.runtimeMinutes,
    t1.title_basics.genres,
    t2.averageRating,
    t2.numVotes
FROM
    title_basics t1
INNER JOIN
    title_ratings t2 ON t1.title_basics.tconst = t2.tconst
WHERE
    t1.genres LIKE '%monster%'
    AND t2.averageRating > (
        SELECT
            AVG(t3.rating)
        FROM
            title_ratings t3
        WHERE
            t3.tconst IN (
                SELECT
                    t4.tconst
                FROM
                    title_basics t4
                WHERE
                    t4.primaryTitle = 'Colossal'
            )
    )
    AND EXISTS (
        SELECT
            1
        FROM
            title_principals t5
        WHERE
            t5.tconst = t1.title_basics.tconst
            AND t5.category = 'actors'
            AND t5.job = 'director'
            AND t5.characters ='monsters'
    )
ORDER BY
    t2.averageRating DESC,
    t1.startYear DESC