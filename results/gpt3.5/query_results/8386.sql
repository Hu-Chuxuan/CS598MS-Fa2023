SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Adventure%' 
    OR tb1.genres LIKE '%Sci-Fi%'
    AND tb1.startYear > 2012
    AND tr.averageRating > 7
    AND tb1.tconst NOT IN ('tt0848228', 'tt3501632')
ORDER BY tr.numVotes DESC
LIMIT 5