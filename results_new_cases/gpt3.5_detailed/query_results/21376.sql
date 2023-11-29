SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.startYear = '1999' 
AND tb.tconst != 'tt0133093' 
AND tb.tconst NOT IN ('tt4034228', 'tt4747474', 'tt0936501')
AND tr.averageRating >= 7
AND tr.numVotes >= 1000
ORDER BY tr.averageRating DESC
LIMIT 1