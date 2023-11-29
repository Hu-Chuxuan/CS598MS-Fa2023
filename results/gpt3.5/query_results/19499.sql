SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS number_of_votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Thriller%'
AND tb.tconst NOT IN ('tt2356180', 'tt1972591', 'tt1855199')  -- excluding user's historical preferences
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5