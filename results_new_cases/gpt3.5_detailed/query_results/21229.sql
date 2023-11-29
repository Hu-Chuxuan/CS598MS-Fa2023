SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%'
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
AND tb.tconst NOT IN ('tt0848228')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10