SELECT tb.primaryTitle AS recommendation, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Jurassic Park', "There's Something About Mary (1998)", '50 First Dates (2004)', 'Jurassic Park  (1993)', 'The Wedding Singer (1998)', "National Lampoon\'s Vacation (1983)")
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5