SELECT tb.tconst,
       tb.primaryTitle,
       tb.startYear,
       tb.runtimeMinutes,
       tb.genres,
       tr.averageRating,
       tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear > 2010
AND tb.tconst NOT IN ('tt1375666', 'tt1245492')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10