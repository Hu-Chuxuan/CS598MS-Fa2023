SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2017
AND tb.startYear <= 2021
AND tb.runtimeMinutes > 90
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 10