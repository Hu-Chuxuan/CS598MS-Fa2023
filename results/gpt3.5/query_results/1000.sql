SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= YEAR(CURDATE())
AND tb.genres LIKE '%Comedy%'
AND tb.runtimeMinutes <= 120
AND tr.numVotes >= 1000
AND tb.tconst NOT IN ('tt0117571') -- Excluding the movie 'Scream  (1996)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10