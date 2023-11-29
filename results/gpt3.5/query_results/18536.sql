SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb.genres AS genre
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Bride Wars', 'The Wedding Planner')
ORDER BY tr.numVotes DESC
LIMIT 5