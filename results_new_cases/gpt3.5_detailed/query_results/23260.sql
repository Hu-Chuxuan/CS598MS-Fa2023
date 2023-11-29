SELECT primaryTitle
FROM title_basics
WHERE tconst IN (
    SELECT tconst
    FROM title_ratings
    WHERE averageRating > 7.5
    AND numVotes > 1000
    )
AND startYear >= 1990
AND genres LIKE '%Thriller%'
AND tconst NOT IN ('tt0114369', 'tt0266543', 'tt0267132', 'tt2108269', 'tt2277860')