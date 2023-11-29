SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2014
AND tb.genres LIKE '%Drama%'
AND tb.tconst NOT IN ('tt0106770', 'tt0279881', 'tt0279883', 'tt0067503', 'tt6139442', 'tt0116629', 'tt8527500')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5