SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Fantasy%'
AND tb.tconst NOT IN ('tt1201607', 'tt0290996', 'tt0184503', 'tt1032723')
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5