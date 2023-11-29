SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
LEFT JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%'
AND tb.startYear > 2013
AND tb.primaryTitle NOT IN ('Frozen (2013)', 'Monsters, Inc. (2001)', 'Inside Out  (2015)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5