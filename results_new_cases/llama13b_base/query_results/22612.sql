SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tb.primaryName = nb.primaryName
JOIN title_crew tc ON tb.directors = tc.directors
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.genres LIKE '%heroes%'
AND tr.averageRating > (
    SELECT AVG(tr2.averageRating)
    FROM title_ratings tr2
    JOIN name_basics nb2 ON tr2.tconst = nb2.primaryName
    WHERE nb2.birthYear BETWEEN 1970 AND 1989
    AND tr2.numVotes > 1000
)
AND NOT EXISTS (
    SELECT 1
    FROM title_ratings tr3
    JOIN name_basics nb3 ON tr3.tconst = nb3.primaryName
    WHERE tr3.tconst = tb.tconst
    AND nb3.primaryName IN (
        SELECT primaryName
        FROM name_basics
        WHERE birthYear BETWEEN 1970 AND 1989
    )
)
AND NOT EXISTS (
    SELECT 1
    FROM title_ratings tr4
    JOIN title_crew tc4 ON tr4.tconst = tc4.directors
    WHERE tr4.tconst = tb.tconst
    AND tc4.directors IN (
        SELECT directors
        FROM title_crew
        WHERE directors LIKE '%Christopher Nolan%'
    )
)
ORDER BY tb.startYear DESC, tb.endYear ASC, tb.runtimeMinutes ASC
LIMIT 10