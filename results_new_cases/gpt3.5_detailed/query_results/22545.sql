SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.isAdult = 0
AND tb.startYear >= 2010
AND (tb.genres LIKE '%Family%' OR tb.genres LIKE '%Animation%' OR tb.genres LIKE '%Adventure%')
AND tb.tconst NOT IN ('tt0120903', 'tt0371746', 'tt3385516') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10