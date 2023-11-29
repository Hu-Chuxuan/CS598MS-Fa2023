SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%'
AND tb.startYear >= 1980
AND tb.tconst NOT IN ('tt0097576', 'tt0120812', 'tt0277434')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5