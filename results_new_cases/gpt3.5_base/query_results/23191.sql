SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Horror%')
AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('Natural Born Killers (1994)', 'Fight Club (1999)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5