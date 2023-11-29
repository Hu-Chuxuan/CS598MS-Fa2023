SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2000
AND tb.startYear <= 2017
AND tb.tconst NOT IN ('tt1204975', 'tt6355340', 'tt1980929', 'tt0452594', 'tt0256415', 'tt0230894') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10