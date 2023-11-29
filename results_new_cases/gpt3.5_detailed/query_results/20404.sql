SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.startYear <= 2000
AND tb.primaryTitle NOT IN ('Halloween (1978)', 'Scream (1996)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5