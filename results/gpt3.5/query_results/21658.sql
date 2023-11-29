SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tr.averageRating >= 7
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0457430')  -- Excluding "Pan's Labyrinth (2006)"
ORDER BY tr.numVotes DESC
LIMIT 5