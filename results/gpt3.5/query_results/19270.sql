SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Comedy%')
AND (tb.startYear BETWEEN 2010 AND 2014)
AND tb.primaryTitle NOT IN ('The Other Guys (2010)', 'Ted  (2012)', 'Airplane! (1980)', 'Neighbors  (2014)')
ORDER BY tr.numVotes DESC
LIMIT 5