SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear = 2010
AND tb.primaryTitle NOT LIKE '%Hangover%'
AND tb.primaryTitle NOT IN ('The Commuter  (2017)')
ORDER BY tr.averageRating DESC
LIMIT 5