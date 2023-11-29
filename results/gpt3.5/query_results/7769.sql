SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2003
AND tb.primaryTitle NOT IN ('Bad Santa', 'Tropic Thunder', 'This Is the End')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5