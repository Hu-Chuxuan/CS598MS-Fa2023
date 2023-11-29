SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Hot Tub Time Machine', 'The Hangover (2009)', 'Harold & Kumar')
AND tr.averageRating >= 7
ORDER BY tr.numVotes DESC
LIMIT 5