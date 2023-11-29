SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 1980 
AND tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0109830', 'tt0092005', 'tt0089218')  -- excluding user preference history
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5