SELECT tb.primaryTitle AS recommendation
FROM title_basics AS tb
INNER JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' AND tb.genres LIKE '%Adventure%'
AND tr.averageRating >= 7.5
AND tb.startYear >= 2012
AND tb.titleType = 'movie'
AND tb.primaryTitle != 'Avengers'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5