SELECT primaryTitle, startYear, runtimeMinutes, genres
FROM title_basics
WHERE tconst IN (
    SELECT tconst
    FROM title_ratings
    WHERE averageRating > 7
    AND numVotes > 500
    AND tconst IN (
        SELECT tconst
        FROM title_principals
        WHERE nconst IN (
            SELECT nconst
            FROM title_principals
            WHERE tconst = 'tt0021749'
            AND category = 'actor'
        )
        AND tconst IN (
            SELECT tconst
            FROM title_principals
            WHERE nconst IN (
                SELECT nconst
                FROM title_principals
                WHERE tconst = 'tt2709768'
                AND category = 'actor'
            )
        )
    )
)
AND tconst NOT IN ('tt3065204', 'tt2980648')
AND startYear >= 2015
AND titleType = 'movie'
AND isAdult = 0
AND runtimeMinutes <= 120
LIMIT 10