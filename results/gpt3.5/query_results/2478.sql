SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.startYear >= 1990
AND tb.startYear < 2017
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5