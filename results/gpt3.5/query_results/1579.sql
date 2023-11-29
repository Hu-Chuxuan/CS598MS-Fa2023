SELECT DISTINCT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.startYear < 2023
AND tb.genres LIKE '%Musical%'
AND tb.primaryTitle NOT IN ('A Christmas Story (1983)', 'The Santa Clause (1994)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5