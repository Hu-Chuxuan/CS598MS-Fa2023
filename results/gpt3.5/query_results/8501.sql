SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear < 2017
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Family%'
AND tb.genres NOT LIKE '%Horror%'
AND tb.tconst NOT IN ('tt0113497', 'tt0436339', 'tt0117998')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10