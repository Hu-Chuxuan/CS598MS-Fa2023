SELECT tb.primaryTitle AS recommended_movie, tb.genres, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Crime%'
AND tb.primaryTitle NOT IN ('The Ring  (2002)', 'The Silence of the Lambs  (1991)')
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 5