SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear = 2017
AND tb.primaryTitle != 'Wonder Woman'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5