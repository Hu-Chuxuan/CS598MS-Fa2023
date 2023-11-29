SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%' 
AND tb.startYear >= 2000
AND tb.endYear IS NULL
AND tr.averageRating >= 8
AND tb.tconst NOT IN ('tt0167260') 
ORDER BY tr.numVotes DESC
LIMIT 5