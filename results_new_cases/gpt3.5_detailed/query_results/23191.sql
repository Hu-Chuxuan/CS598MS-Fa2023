SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Horror%')
AND tb.primaryTitle NOT IN ('Natural Born Killers (1994)', 'Fight Club (1999)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5