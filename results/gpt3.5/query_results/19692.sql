SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%German%' OR tb.genres LIKE '%Jewish%' OR tb.genres LIKE '%Egypt%' OR tb.genres LIKE '%pyramid%')
AND tb.titleType = 'movie' AND tb.startYear > 2000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5