SELECT tb.primaryTitle
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%War%'
AND tb.primaryTitle NOT IN ('Jurassic World (2015)', 'Jurassic Park  (1993)', 'I, Robot  (2004)', 'Lost in Space  (1998)', 'A.I. Artificial Intelligence (2001)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10