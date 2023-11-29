SELECT tb.primaryTitle AS Recommended_Movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 2000
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt2488496', 'tt0289879', 'tt0338337') 
AND tr.averageRating >= 7.5
ORDER BY tr.numVotes DESC
LIMIT 5