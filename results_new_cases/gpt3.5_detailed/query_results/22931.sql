SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' AND tb.genres LIKE '%War%'
AND tb.primaryTitle NOT IN ('Full Metal Jacket (1987)', 'Black Hawk Down  (2002)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10