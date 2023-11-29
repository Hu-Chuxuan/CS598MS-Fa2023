SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 1995
AND tb.genres LIKE '%Animation%'
AND tb.tconst NOT IN ('tt0114709', 'tt0112408', 'tt0109830') -- excluding previously watched movies
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5