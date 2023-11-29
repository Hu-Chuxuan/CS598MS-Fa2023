SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 1999
AND (tb.primaryTitle LIKE '%Fight Club%' OR tb.originalTitle LIKE '%Fight Club%')
AND tb.tconst NOT IN ('tt2543164', 'tt0081505', 'tt2091633', 'tt12133343', 'tt3522470', 'tt0085382')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5