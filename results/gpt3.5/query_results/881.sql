SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Romance%'
AND tb.genres LIKE '%Comedy%'
AND tr.averageRating > 6
AND tr.numVotes > 1000
AND tb.tconst NOT IN ('tt0848228', 'tt1758830')