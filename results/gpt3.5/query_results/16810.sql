SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tb.tconst NOT IN ('tt3501632', 'tt0249622', 'tt1074638')  -- excluding movies already seen
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5