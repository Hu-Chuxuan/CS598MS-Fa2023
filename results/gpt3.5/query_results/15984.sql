SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.startYear < 2008
AND tb.startYear > 2005
AND tr.averageRating > 7
AND tb.primaryTitle != 'The Mist'
ORDER BY tr.numVotes DESC
LIMIT 5