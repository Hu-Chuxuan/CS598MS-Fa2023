SELECT tb.primaryTitle AS recommended_movies
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Mystery%'
AND tb.startYear >= 1990
AND tb.startYear <= 2000
AND tr.averageRating >= 7
AND tb.tconst NOT IN ('tt2294629', 'tt4846340', 'tt2277860')
AND tb.tconst NOT IN ('tt0126029', 'tt1049413', 'tt2277860')
ORDER BY tr.numVotes DESC
LIMIT 5