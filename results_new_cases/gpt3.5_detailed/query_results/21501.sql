SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Fantasy%'
AND tb.startYear = 2018
AND tb.primaryTitle != 'Avengers: Infinity War'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5