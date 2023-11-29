SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear = 1984
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle != 'Beverly Hills Cop'
AND tr.averageRating > 7
ORDER BY tr.numVotes DESC
LIMIT 5