SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear < 1985
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt0087262', 'tt0089489', 'tt0468569', 'tt0079501')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5