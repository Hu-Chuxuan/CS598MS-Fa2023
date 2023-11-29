SELECT distinct tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Hercules  (2014)', 'Miss Congeniality  (2000)')
AND tr.averageRating > 7
ORDER BY tr.numVotes DESC
LIMIT 5