SELECT tb.primaryTitle AS Recommended_Horror_Movies
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10