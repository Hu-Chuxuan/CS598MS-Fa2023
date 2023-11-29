SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear > 1989
AND tb.primaryTitle NOT IN ('Blade Runner (1982)', 'Cocoon  (1985)', 'The Abyss (1989)')
ORDER BY tr.averageRating DESC
LIMIT 5