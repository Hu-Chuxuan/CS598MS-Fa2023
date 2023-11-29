SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 1995
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Die Hard (1988)', 'Terminator 2: Judgment Day (1991)', 'The Terminator (1984)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 3