SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear < 1988
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt2488496', 'tt2406566', 'tt0095016', 'tt0093409', 'tt1430612')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5