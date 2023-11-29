SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 1978
AND tb.genres LIKE '%Horror%'
AND tb.tconst NOT IN ('tt0335266')  -- excluding 'Lost in Translation (2003)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5