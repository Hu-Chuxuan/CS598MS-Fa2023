SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear <= YEAR(GETDATE()) - 10
AND tb.titleType = 'movie'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10