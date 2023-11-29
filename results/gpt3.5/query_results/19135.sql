SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.primaryTitle != 'The Bourne Identity'
AND tb.startYear <= 2002
AND tb.genres LIKE '%Action%'
AND tr.averageRating >= 7
AND tr.numVotes >= 10000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5