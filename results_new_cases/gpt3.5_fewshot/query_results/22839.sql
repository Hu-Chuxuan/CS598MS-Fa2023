SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tr.averageRating > 8
ORDER BY tr.numVotes DESC
LIMIT 10