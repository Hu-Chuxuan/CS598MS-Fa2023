SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tr.averageRating >= 7
AND tb.primaryTitle != 'Avengers: Infinity War (2018)'
ORDER BY tr.numVotes DESC
LIMIT 5