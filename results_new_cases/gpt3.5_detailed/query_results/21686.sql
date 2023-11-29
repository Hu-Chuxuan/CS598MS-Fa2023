SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear > 2000 
AND tb.startYear < 2020 
AND tb.tconst NOT IN ('tt0317919', 'tt0241527')
AND tr.averageRating > 6.5
ORDER BY tr.numVotes DESC
LIMIT 5