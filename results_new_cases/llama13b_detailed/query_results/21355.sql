SELECT * FROM title_basics
WHERE titleType ='movie' AND (
    NOT (
        title LIKE '%ape%'
        OR
        ANY (genres) LIKE '%ape%'
    )
) AND
(
    ANY (genres) LIKE '%musical%'
    OR
    title IN (
        SELECT title
        FROM title_ratings
        WHERE averageRating > 6 AND numVotes > 1000
    )
)
AND (
    ANY (categories) LIKE '%actor%'
    OR
    ANY (categories) LIKE '%writer%'
)
ORDER BY runtimeMinutes DESC, startYear DESC