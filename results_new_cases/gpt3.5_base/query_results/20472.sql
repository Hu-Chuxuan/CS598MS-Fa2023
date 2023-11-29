SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Scary Movie (2000)', 'American Pie  (1999)', 'Click  (2006)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5