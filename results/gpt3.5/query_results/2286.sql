SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Fantasy%'
AND tb.averageRating >= 6
AND tb.numVotes > 1000
ORDER BY ABS(tb.runtimeMinutes - 104)
LIMIT 5