SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.startYear BETWEEN 1980 AND 2000)
AND tb.titleType = 'movie'
AND tb.tconst NOT IN ('tt0093779', 'tt0120812', 'tt0112573')  -- excluding user's watched movies
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5