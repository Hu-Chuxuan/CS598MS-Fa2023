SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear <= 2008
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt0120903', 'tt0468569')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5