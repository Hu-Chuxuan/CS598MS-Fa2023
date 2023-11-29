SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.startYear > 2015
AND tb.startYear < 2023
AND tb.runtimeMinutes > 90
AND tr.numVotes > 1000
AND tb.tconst NOT IN ('tt2488496')
ORDER BY tr.averageRating DESC
LIMIT 10