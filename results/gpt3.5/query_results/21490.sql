SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.genres LIKE '%Horror%'
AND tr.numVotes > 1000
AND tb.tconst NOT IN ('tt0084516', 'tt2023587')
ORDER BY tr.averageRating DESC
LIMIT 10