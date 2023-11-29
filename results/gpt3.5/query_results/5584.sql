SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' OR tb.genres LIKE '%Horror%'
AND tb.startYear >= 1990
AND tb.startYear <= 2000
AND tb.primaryTitle <> 'Anaconda  (1997)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5