SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt0120815', 'tt0265086', 'tt0112573', 'tt0044706', 'tt0120815', 'tt0066027')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10