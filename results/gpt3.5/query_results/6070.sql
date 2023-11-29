SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Romance%' AND tb1.genres LIKE '%Comedy%'
AND tb1.primaryTitle NOT IN ('Maid in Manhattan', 'The Holiday (2006)', 'Fools Rush In  (1997)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5