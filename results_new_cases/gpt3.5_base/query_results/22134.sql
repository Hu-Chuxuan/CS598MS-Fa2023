SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Fantasy%'
AND tb1.startYear >= 2010
AND tb1.tconst NOT IN (
    SELECT DISTINCT tp.tconst
    FROM title_principals AS tp
    JOIN title_basics AS tb2 ON tp.tconst = tb2.tconst
    WHERE tp.nconst IN ('tt0944947', 'tt0110912', 'tt0110357', 'tt0106332', 'tt0068646', 'tt0110912', 'tt0110912')
)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5