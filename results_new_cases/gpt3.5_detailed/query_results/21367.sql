SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' AND tb.genres LIKE '%Action%'
AND tb.startYear > 2001
AND tb.tconst NOT IN ('tt0139654', 'tt4154796')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10