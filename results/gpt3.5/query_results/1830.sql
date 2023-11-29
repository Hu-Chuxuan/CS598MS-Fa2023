SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear <= 1985
AND tr.numVotes >= 1000
AND tb.tconst NOT IN ('tt0063350', 'tt0080761', 'tt0082350')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5