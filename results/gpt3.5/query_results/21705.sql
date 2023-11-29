SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%'
AND tb.startYear >= 2019
AND tr.averageRating >= 7
AND tr.numVotes >= 50000
AND tb.tconst NOT IN ('tt2015381', 'tt3896198', 'tt5463162')
GROUP BY recommended_movie
ORDER BY COUNT(*) DESC
LIMIT 5