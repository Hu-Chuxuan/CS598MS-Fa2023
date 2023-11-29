SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Hot Tub Time Machine', 'The Hangover (2009)', 'Harold & Kumar')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5