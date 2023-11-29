SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0317705', 'tt2277860', 'tt2380307') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10