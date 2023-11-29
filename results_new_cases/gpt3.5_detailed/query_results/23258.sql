SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.tconst IN (
    SELECT DISTINCT tp.tconst
    FROM title_principals tp
    JOIN title_basics tb1 ON tp.tconst = tb1.tconst
    WHERE tp.nconst IN (
        SELECT nconst
        FROM title_principals
        WHERE tconst = 'tt2184339' -- Replace with the tconst of 'The Purge (2013)'
    )
    AND tb1.titleType = 'movie'
    AND tp.tconst != 'tt2184339' -- Exclude the movie 'The Purge (2013)'
)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10