SELECT tb.primaryTitle AS Recommended_Movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.startYear >= 2010
AND tb.primaryTitle NOT IN ('Avengers: Infinity War (2018)', 'The Post (2017)')
AND tp.category = 'writer'
AND tp.nconst IN (
    SELECT nconst
    FROM title_principals
    WHERE tconst IN (
        SELECT knownForTitles
        FROM name_basics
        WHERE primaryName = 'Stephen King'
    )
)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1