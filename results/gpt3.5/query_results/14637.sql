SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'tvseries'
AND tb.genres LIKE '%horror%'
AND tb.startYear >= 2000
AND (tb.primaryTitle LIKE '%Scream%' OR tb.primaryTitle LIKE '%Saw%')
AND tb.tconst NOT IN ('tt0117571', 'tt0244316', 'tt0120003', 'tt4972582')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10