SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Slasher%'
AND tb.tconst NOT IN ('tt0117571', 'tt0246578', 'tt0092076')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10